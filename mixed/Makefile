ALL_ASM = $(wildcard *.asm) $(wildcard *.inc)
ALL_C = $(wildcard *.c) $(wildcard *.h)

ALL_OBJS = $(patsubst %.c,%.o,$(wildcard *.c)) $(patsubst %.asm,%.obj,$(wildcard *.asm))

all: $(ALL_OBJS)
	cl65 -t cx16 -o HELLOMIX.PRG -m hello.mmap $(ALL_OBJS)

%.o: %.c
	cc65 -t cx16 -o $(patsubst %.o,%.s,$@) $<
	ca65 -t cx16 -o $@ $(patsubst %.o,%.s,$@)

%.obj: %.asm
	ca65 -t cx16 -o $@ $<

clean:
	rm -f *.PRG *.mmap *.o *.obj *.s
