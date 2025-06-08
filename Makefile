include defs.mk

DIR  := .
include $(DIR)/test/Makefile

.PHONY: test
test: $(TEST)
.PHONY: test_targets
test_targets:
	./gen_test_targets.py $(GITHUB_OUTPUT) $(TEST)

.PHONY: clean
clean: $(CLEAN)
