SRCS        := $(wildcard $(DIR)/*.c)
OBJS        := $(SRCS:.c=.o)
BIN         := $(DIR)/main
CLEAN_FILES := $(addsuffix .clean,$(OBJS) $(BIN))

$(BIN): $(OBJS)
	$(CC) -o $@ $^

$(OBJS): %.o: %.c
	$(CC) -c -o $*.o $*.c

include $(ROOT)/clean.mk
