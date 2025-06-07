SP             := $(SP).x
DIRSTACK_$(SP) := $(DIR)
DIR            := $(DIR)/test

include $(DIR)/test1/Makefile
include $(DIR)/test2/Makefile

DIR            := $(DIRSTACK_$(SP))
SP             := $(basename $(SP))
