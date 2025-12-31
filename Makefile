# Choose assembler: asm6809 or a09
ASM ?= a09
SRC = src/hello.asm
ROM = dist/hello.rom

all: $(ROM) verify

$(ROM): $(SRC)
	mkdir -p dist
	$(ASM) -Ldist/hello.lst -Bdist/hello.bin $<
	python3 create_rom.py

verify: $(ROM)
	@echo "ROM file created:"
	@od -tx1 -Ax -N32 $(ROM)
	@echo ""
	@echo "Last 16 bytes:"
	@tail -c 16 $(ROM) | od -tx1 -Ax
	@ls -l $(ROM)

run: $(ROM)
	xroar -machine dragon32 -cart $(ROM)

clean:
	rm -rf dist