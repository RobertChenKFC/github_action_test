NAME := test3
include $(ROOT)/push.mk

BIN := $(DIR)/run.py
.PHONY: $(DIR).test
TEST := $(TEST) $(DIR).test
$(DIR).test: $(BIN)
	./$<

include $(ROOT)/pop.mk
