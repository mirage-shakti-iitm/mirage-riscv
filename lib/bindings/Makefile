PKG_CONFIG_PATH := $(shell opam config var prefix)/riscv-sysroot/lib/pkgconfig

CC ?= cc
FREESTANDING_CFLAGS := $(shell PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) pkg-config --cflags ocaml-freestanding-riscv)
CFLAGS := $(FREESTANDING_CFLAGS) \
    -O2 -std=c99 -Wall -Werror

.PHONY: all clean
all: libmirage-riscv_bindings.a

OBJS=alloc_pages_stubs.o clock_stubs.o mm_stubs.o atomic_stubs.o cstruct_stubs.o barrier_stubs.o main.o checksum_stubs.o riscv_console_stubs.o solo5_net_stubs.o solo5_block_stubs.o

libmirage-riscv5_bindings.a: $(OBJS)
	$(AR) r $@ $^

clean:
	$(RM) $(OBJS) libmirage-xen_bindings.a
