/*
 * Copyright (c) 2016 Martin Lucina <martin.lucina@docker.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#include <ocaml-boot-riscv.h>

#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/callback.h>
#include <caml/alloc.h>

static const char *riscv_cmdline = "";
static char *unused_argv[] = { "mirage", NULL };

CAMLprim value
mirage_riscv_yield(value v_deadline)
{
    CAMLparam1(v_deadline);

    //time_t is defined elsewhere, using time__t instead
    time__t deadline = (Int64_val(v_deadline));
    riscv_wait(deadline);

    // for now no IO is possible therefore always return false
    CAMLreturn(Val_bool(false));
}

CAMLprim value
mirage_riscv_get_cmdline(value unit)
{
    CAMLparam1(unit);

    CAMLreturn(caml_copy_string(riscv_cmdline));
}


// provide startup function for ocaml-boot-riscv
extern void _nolibc_init(uintptr_t, size_t);

void riscv_boot_finished(uintptr_t heap_start, uint64_t heap_size)
{
    _nolibc_init(heap_start, heap_size);
    caml_startup(unused_argv);
}
