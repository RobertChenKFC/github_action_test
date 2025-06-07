NAME := test1
include $(ROOT)/push.mk
include $(ROOT)/c.mk

.PHONY: $(DIR).test
TEST := $(TEST) $(DIR).test
$(DIR).test: $(BIN)
	./$<

include $(ROOT)/pop.mk
