ASMS=$(shell ls *.s)

.phony: generate-initial-cap-tee

generate-initial-cap-tee: $(ASMS)
	initial_cap_file_generator o 254 $(ASMS)