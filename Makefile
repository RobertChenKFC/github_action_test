CC=gcc
SRC=main.c
BIN=$(SRC:.c=)

.PHONY: test
test: $(BIN)
	./$<

$(BIN): $(SRC)
	$(CC) -o $@ $^

.PHONY: clean
clean:
	rm -f $(BIN)
