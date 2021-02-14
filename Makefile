.PHONY: all clean install add-cap-files

BUILD_MIRAGE_RISCV_LIB=$(shell pwd)/build_c_stubs
MIRAGE_RISCV_BINDINGS_PATH=$(shell opam config var prefix)/riscv-sysroot/lib/mirage-riscv
MIRAGE_RISCV_PC_PATH=$(shell opam config var prefix)/riscv-sysroot/lib/pkgconfig

$(BUILD_MIRAGE_RISCV_LIB)/Makefile:
	mkdir -p $(BUILD_MIRAGE_RISCV_LIB)
	cp -r lib/bindings/* $(BUILD_MIRAGE_RISCV_LIB)

$(BUILD_MIRAGE_RISCV_LIB)/libmirage-riscv_bindings.a: $(BUILD_MIRAGE_RISCV_LIB)/Makefile
	$(MAKE) -C $(BUILD_MIRAGE_RISCV_LIB) libmirage-riscv_bindings.a
	mkdir -p ${MIRAGE_RISCV_BINDINGS_PATH}/
	cp ${BUILD_MIRAGE_RISCV_LIB}/libmirage-riscv_bindings.a ${MIRAGE_RISCV_BINDINGS_PATH}/

all: $(BUILD_MIRAGE_RISCV_LIB)/libmirage-riscv_bindings.a

install: all
	mkdir -p ${MIRAGE_RISCV_BINDINGS_PATH}/
# 	cp ${BUILD_MIRAGE_RISCV_LIB}/libmirage-riscv_bindings.a ${MIRAGE_RISCV_BINDINGS_PATH}/

uninstall:   
	rm -rf $(BUILD_MIRAGE_RISCV_LIB)

clean: 
	rm -rf $(BUILD_MIRAGE_RISCV_LIB)