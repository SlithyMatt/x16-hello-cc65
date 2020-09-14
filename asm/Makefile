ALL_ASM = $(wildcard *.asm) $(wildcard *.inc)

all: $(ALL_ASM)
	cl65 -t cx16 -o HELLOASM.PRG -l hello.list hello.asm

clean:
	rm -f *.PRG *.list *.o
