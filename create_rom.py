#!/usr/bin/env python3
"""Create Dragon 32 cartridge by padding assembled binary to proper ROM image."""
import sys

# Read the assembled binary code
with open('dist/hello.bin', 'rb') as f:
    code = f.read()

# Create 16KB ROM file (array index 0 = address $C000)
rom = bytearray(16384)
for i in range(16384):
    rom[i] = 0xff

# Place code at index 0 (which maps to $C000 in the Dragon's address space)
for i in range(len(code)):
    rom[i] = code[i]

# Set reset vector at $FFFE (index 16382-16383) to point to $C000 (index 0)
# In Motorola format (big-endian): high byte first, then low byte
rom[16382] = 0xC0  # high byte of $C000
rom[16383] = 0x00  # low byte of $C000

# Write the ROM
with open('dist/hello.rom', 'wb') as f:
    f.write(rom)

print(f"Created 16KB cartridge with {len(code)} bytes of code at $C000")
print(f"Reset vector at $FFFE -> $C000")
