CC   := gcc
ROOT := .

DIR  := .
include $(DIR)/test/Makefile

.PHONY: test
test: $(TEST)

.PHONY: clean
clean: $(CLEAN)
