NAME := test2
include $(ROOT)/push.mk
include $(ROOT)/c.mk

.PHONY: $(DIR).test
TEST := $(TEST) $(DIR).test
$(DIR).test: $(BIN)
	./$<

include $(DIR)/test3/Makefile
include $(ROOT)/pop.mk
