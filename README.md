# mirage-riscv -- RISC-V/SHAKTI core platform libraries for MirageOS

This package provides the MirageOS `OS` library for
RISC-V/SHAKTI targets, which handles the main loop and timers. It also provides
the low level C startup code and C stubs required by the OCaml code.

Currently this package also includes the C stubs used by the RISC-V `console` (XXX: not existing yet)
The OCaml runtime and C runtime required to support it are provided separately
by the [ocaml-freestanding-riscv][1] package.

[1]: https://gitlab.com/shaktiproject/tools/shakti-tee/ocaml-freestanding-riscv#mirage
