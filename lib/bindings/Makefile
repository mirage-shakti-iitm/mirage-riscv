PKG_CONFIG_PATH := $(shell opam config var prefix)/riscv-sysroot/lib/pkgconfig

CC=riscv64-unknown-elf-gcc

C_FLAGS=-mcmodel=medany -O2 -std=c99 -Wall -Werror

C_INCLUDES=-I${OPAM_SWITCH_PREFIX}/riscv-sysroot/include/ocaml-freestanding-riscv -I${OPAM_SWITCH_PREFIX}/riscv-sysroot/include/ocaml-boot-riscv -I${OPAM_SWITCH_PREFIX}/riscv-sysroot/lib/ocaml

OBJS=alloc_pages_stubs.o atomic_stubs.o barrier_stubs.o checksum_stubs.o clock_stubs.o cstruct_stubs.o main.o mm_stubs.o riscv_console_stubs.o

SRCS=alloc_pages_stubs.c atomic_stubs.c barrier_stubs.c checksum_stubs.c clock_stubs.c cstruct_stubs.c main.c mm_stubs.c riscv_console_stubs.c

$(OBJS):%.o: %.c
	$(CC) -g $(C_INCLUDES) $(C_FLAGS) -o $@ -c $<

libmirage-riscv_bindings.a: $(OBJS)
	riscv64-unknown-elf-ar rcs $@ $(OBJS)


# FREESTANDING_CFLAGS := $(shell PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) pkg-config --cflags ocaml-freestanding-riscv)
# CFLAGS := $(FREESTANDING_CFLAGS) \
#     -O2 -std=c99 -Wall -Werror