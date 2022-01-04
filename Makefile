CC=gcc
#CFLAGS=-O0 #-I.

source = src
srcs = main parser
headers = parser

buildname = toffee

OBJ = $(patsubst %, $(source)/%.o, $(srcs))
DEPS = $(patsubst %, $(source)/%.h, $(headers))

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(buildname): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f $(OBJ)
