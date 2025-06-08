SP             := $(SP).x
DIRSTACK_$(SP) := $(DIR)
DIR            := $(DIR)/test

include $(wildcard $(DIR)/*/Makefile)

DIR            := $(DIRSTACK_$(SP))
SP             := $(basename $(SP))
