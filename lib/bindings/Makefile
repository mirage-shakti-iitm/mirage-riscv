CC=riscv64-unknown-elf-gcc

C_FLAGS=-mcmodel=medany -O2 -std=c99 -Wall -Werror

C_INCLUDES=-I${OPAM_SWITCH_PREFIX}/include/ocaml-freestanding -I${OPAM_SWITCH_PREFIX}/include/ocaml-boot-riscv -I${OPAM_SWITCH_PREFIX}/riscv-sysroot/lib/ocaml

OBJS=alloc_pages_stubs.o atomic_stubs.o barrier_stubs.o checksum_stubs.o clock_stubs.o cstruct_stubs.o main.o mm_stubs.o riscv_console_stubs.o

SRCS=alloc_pages_stubs.c atomic_stubs.c barrier_stubs.c checksum_stubs.c clock_stubs.c cstruct_stubs.c main.c mm_stubs.c riscv_console_stubs.c

ASMS=alloc_pages_stubs.s atomic_stubs.s barrier_stubs.s checksum_stubs.s clock_stubs.s cstruct_stubs.s main.s mm_stubs.s riscv_console_stubs.s

CAPS=alloc_pages_stubs.cap atomic_stubs.cap barrier_stubs.cap checksum_stubs.cap clock_stubs.cap cstruct_stubs.cap main.cap mm_stubs.cap riscv_console_stubs.cap

$(OBJS):%.o: %.s
	$(CC) -g $(C_INCLUDES) $(C_FLAGS) -o $@ -c $<

.phony: generate-asm generate-initial-cap-tee add-checkap

add-checkcap: $(ASMS)
	for f in $^; do postProcessing.py ./$$f; done

libmirage-riscv_bindings.a: generate-asm $(OBJS)
	riscv64-unknown-elf-ar rcs $@ $(OBJS)

generate-asm: $(SRCS)
	$(CC) $(C_FLAGS) $(C_DEFINES) $(C_INCLUDES) $(SRCS) -S

generate-initial-cap-tee: generate-asm $(ASMS)
	initial_cap_file_generator c 254 $(ASMS)
