NAME := test5
include $(ROOT)/push.mk
include $(ROOT)/c.mk

.PHONY: $(DIR).test
TEST := $(TEST) $(DIR).test
$(DIR).test: $(BIN)
	valgrind ./$<

include $(ROOT)/pop.mk
