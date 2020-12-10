ALL_C = $(wildcard *.c)

all: $(ALL_C)
	cl65 -t cx16 -o HELLOC.PRG -l hello.list $^

clean:
	rm -f *.PRG *.list *.o
