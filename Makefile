all:
	$(MAKE) -C asm
	$(MAKE) -C c
	$(MAKE) -C mixed

clean:
	$(MAKE) -C asm clean
	$(MAKE) -C c clean
	$(MAKE) -C mixed clean
