CC = clang -std=c89
SRCS = $(wildcard *.c)
BINS = $(patsubst %.c, %, $(SRCS))
LIBS = -lsqlite3
WFLAGS = -pedantic-errors -Wall -Wextra

.PHONY: clean

all: $(BINS)

%: %.c
	$(CC) $(LIBS) $(WFLAGS) -o $@ $<

clean: 
	rm -f $(BINS)
