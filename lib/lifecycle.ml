(* No shutdown events on Solo5. *)
open Lifecycle_cap_tee

let await_shutdown_request ?can_poweroff:_ ?can_reboot:_ () =
  fst (Lwt.wait ())
