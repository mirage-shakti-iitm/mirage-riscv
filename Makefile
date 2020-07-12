.PHONY: all clean install add-cap-files

BUILD_MIRAGE_RISCV_LIB=$(shell pwd)/build_c_stubs
MIRAGE_RISCV_BINDINGS_PATH=$(shell opam config exec -- ocamlfind -toolchain riscv query mirage-riscv)

# MIRAGE_RISCV_BINDINGS_PATH=$(shell opam config var prefix)/riscv-sysroot/lib/mirage-riscv

$(BUILD_MIRAGE_RISCV_LIB)/Makefile:
	mkdir -p $(BUILD_MIRAGE_RISCV_LIB)
	cp -r lib/bindings/* $(BUILD_MIRAGE_RISCV_LIB)

$(BUILD_MIRAGE_RISCV_LIB)/libmirage-riscv_bindings.a: $(BUILD_MIRAGE_RISCV_LIB)/Makefile
	$(MAKE) -C $(BUILD_MIRAGE_RISCV_LIB) libmirage-riscv_bindings.a

all: $(BUILD_MIRAGE_RISCV_LIB)/libmirage-riscv_bindings.a

add-cap-files:
	./choose_compartment_strategy.sh $(COMPARTMENT_STRATEGY_CHOICE)

generate-asm: $(BUILD_MIRAGE_RISCV_LIB)/Makefile
	$(MAKE) -C $(BUILD_MIRAGE_RISCV_LIB) generate-asm

generate-initial-cap-tee: $(BUILD_MIRAGE_RISCV_LIB)/Makefile
	$(MAKE) -C $(BUILD_MIRAGE_RISCV_LIB) generate-initial-cap-tee

install: all
	cp ${BUILD_MIRAGE_RISCV_LIB}/libmirage-riscv_bindings.a ${MIRAGE_RISCV_BINDINGS_PATH}/

uninstall:   
	rm -rf $(BUILD_MIRAGE_RISCV_LIB)

clean: 
	rm -rf $(BUILD_MIRAGE_RISCV_LIB)