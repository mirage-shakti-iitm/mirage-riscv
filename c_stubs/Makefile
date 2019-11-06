.PHONY: all clean
all: 
	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/alloc_pages_stubs.c'

	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/atomic_stubs.c'

	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/barrier_stubs.c'

	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/checksum_stubs.c'

	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/clock_stubs.c'

	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/cstruct_stubs.c'

	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/main.c'

	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/mm_stubs.c'

	riscv64-unknown-elf-gcc -Os -fno-strict-aliasing -fwrapv -fPIC -D_FILE_OFFSET_BITS=64 -D_REENTRANT   -c -g -O2 -std=c99 -Wall -Werror -I/home/sai/.opam/4.07.0/lib/pkgconfig/../../include/ocaml-freestanding -I/home/sai/.opam/4.07.0/include  -I'/home/sai/.opam/4.07.0/riscv-sysroot/lib/ocaml' '../lib/bindings/riscv_console_stubs.c'

	riscv64-unknown-elf-ar rc libmirage-riscv_bindings.a  alloc_pages_stubs.o atomic_stubs.o barrier_stubs.o checksum_stubs.o clock_stubs.o cstruct_stubs.o main.o mm_stubs.o riscv_console_stubs.o && riscv64-unknown-elf-ranlib libmirage-riscv_bindings.a

clean:
	rm *.o
	rm *.a