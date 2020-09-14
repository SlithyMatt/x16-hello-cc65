ALL_C = $(wildcard *.c) $(wildcard *.h)

all: $(ALL_C)
	cl65 -t cx16 -o HELLOC.PRG -l hello.list hello.c

clean:
	rm -f *.PRG *.list *.o
