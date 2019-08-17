(* Lightweight thread library for Objective Caml
 * http://www.ocsigen.org/lwt
 * Module Lwt_mirage, based on Lwt_unix
 * Copyright (C) 2010 Anil Madhavapeddy
 * Copyright (C) 2005-2008 J�r�me Vouillon
 * Laboratoire PPS - CNRS Universit� Paris Diderot
 *                    2009 J�r�mie Dimino
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation, with linking exceptions;
 * either version 2.1 of the License, or (at your option) any later
 * version. See COPYING file for details.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
 * 02111-1307, USA.
 *)

open Lwt

type +'a io = 'a Lwt.t

module Monotonic = struct
  type time_kind = [`Time | `Interval]
  type 'a t = int64 constraint 'a = [< time_kind]

  external time : unit -> int64 = "caml_get_monotonic_time"

  let of_nanoseconds x = x

  let ( + ) = ( Int64.add )
  let ( - ) = ( Int64.sub )
  let interval = ( Int64.sub )
end

(* +-----------------------------------------------------------------+
   | Sleepers                                                        |
   +-----------------------------------------------------------------+ *)

type sleep = {
  time : [`Time] Monotonic.t;
  mutable canceled : bool;
  thread : unit Lwt.u;
}

module SleepQueue =
  Binary_heap.Make (struct
                     type t = sleep
                     let compare { time = t1; _ } { time = t2; _ } =
                       (* bheap library only operates on maximums, but we
                          need the minimum, so invert the order *)
                       let invert_comparison x = -x in
                       invert_comparison (compare t1 t2)
                   end)

(* Threads waiting for a timeout to expire: *)
(* bheap datastructure needs to be created with initial strictly positive capacity *)
let sleep_queue = SleepQueue.create 1

(* Sleepers added since the last iteration of the main loop:

   They are not added immediatly to the main sleep queue in order to
   prevent them from being wakeup immediatly by [restart_threads].
*)
let new_sleeps = ref []

let sleep_ns d =
  Logs.info (fun f -> f "sleep_ns : d: %s\n" (Int64.to_string d)) ;
  let (res, w) = Lwt.task () in
  let t = Monotonic.(time () + of_nanoseconds d) in
  Logs.info (fun f -> f "sleep_ns : org_time: %s .. t: %s\n" (Int64.to_string t) (Int64.to_string Monotonic.(time() + of_nanoseconds 0))) ;
  let sleeper = { time = t; canceled = false; thread = w } in
  new_sleeps := sleeper :: !new_sleeps;
  Lwt.on_cancel res (fun _ -> sleeper.canceled <- true);
  res

exception Timeout

let timeout d = sleep_ns d >>= fun () -> Lwt.fail Timeout

let with_timeout d f = Lwt.pick [timeout d; Lwt.apply f ()]

let in_the_past now t =
  t = 0L || t <= now ()

let rec restart_threads now =
  match SleepQueue.maximum sleep_queue with
  | exception Binary_heap.Empty -> ()
  | { canceled = true; _ } ->
      SleepQueue.remove sleep_queue;
      restart_threads now
  | { time = time; thread = thread; _ } when in_the_past now time ->
      SleepQueue.remove sleep_queue;
      Lwt.wakeup thread ();
      restart_threads now
  | _ -> ()

(* +-----------------------------------------------------------------+
   | Event loop                                                      |
   +-----------------------------------------------------------------+ *)

let min_timeout a b = match a, b with
  | None, b -> b
  | a, None -> a
  | Some a, Some b -> Some(min a b)

let rec get_next_timeout () =
  
  match SleepQueue.maximum sleep_queue with
  | exception Binary_heap.Empty -> None
  | { canceled = true; _ } ->
      SleepQueue.remove sleep_queue;
      get_next_timeout ()
  | { time = time; _ } ->
      Some time

let select_next () =
  (* Transfer all sleepers added since the last iteration to the main
     sleep queue: *)
  List.iter
      (fun e -> SleepQueue.add sleep_queue e) !new_sleeps;
  new_sleeps := [];
  get_next_timeout ()
