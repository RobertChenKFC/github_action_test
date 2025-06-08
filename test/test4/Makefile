NAME := test4
include $(ROOT)/push.mk
include $(ROOT)/c.mk

OUT := $(DIR)/out.txt
REF := $(DIR)/ref.txt
$(OUT): $(BIN)
	./$< > $@

.PHONY: $(DIR).test
TEST := $(TEST) $(DIR).test
$(DIR).test: $(OUT) $(REF)
	cmp -s $^

include $(ROOT)/pop.mk
