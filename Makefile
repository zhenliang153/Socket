SOURCE = $(wildcard *.c)
TARGETS = $(patsubst %.c, %, $(SOURCE))
 
CC = gcc
CFLAGS = -Wall -g

all:$(TARGETS)
 
$(TARGETS):%:%.c
	$(CC) $(CFLAGS) -o $@ $<


.PHONY: clean
clean:
	rm -rf $(TARGETS)
