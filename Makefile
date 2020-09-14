all:
	$(MAKE) -C asm
	$(MAKE) -C c
	$(MAKE) -C mixed
	
