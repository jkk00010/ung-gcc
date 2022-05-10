.POSIX:

LIBDEST=/lib/x86_64-ungol
BINDEST=/usr/local/bin

all: crt_end.o crt_start.o

install: all
	mkdir -p $(LIBDEST)
	cp -f crt_start.o crt_end.o ungol-gcc.specs $(LIBDEST)/
	mkdir -p $(BINDEST)
	cp -f ungol-gcc $(BINDEST)/

crt_end.o: crt_end.c 

crt_start.o: crt_start.s
