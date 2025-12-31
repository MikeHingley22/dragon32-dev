#!/usr/bin/env python3
"""
Dragon 32 Screen Designer
Converts a text-based screen layout to 6809 assembly code
"""
# import numpy as np
import sys
import os

# Screen dimensions
SCREEN_WIDTH = 32
SCREEN_HEIGHT = 16
SCREEN_BASE = 0x0400

def load_file_as_uint8_lines(filename):
    """
    Reads a file as raw uint8 bytes and splits it into lines.
    Returns a list of numpy arrays (each line as uint8 values).
    """
    if not os.path.isfile(filename):
        raise FileNotFoundError(f"File not found: {filename}")

    try:
        # Open in binary mode to get raw bytes
        with open(filename, 'rb') as f:
            data = f.read()  # Read entire file as bytes

        # Convert to numpy uint8 array
        byte_array = np.frombuffer(data, dtype=np.uint8)

        # Split into lines based on newline byte (10 in ASCII)
        newline_byte = np.uint8(10)
        line_indices = np.where(byte_array == newline_byte)[0]

        # Extract lines
        lines = []
        start = 0
        for idx in line_indices:
            lines.append(byte_array[start:idx])  # Exclude newline
            start = idx + 1
        if start < len(byte_array):  # Last line without newline
            lines.append(byte_array[start:])

        return lines
    except Exception as e:
        raise RuntimeError(f"Error reading file: {e}")

def load_screen_from_file(filename):
    """Load screen design from a text file"""
    if not os.path.exists(filename):
        print(f"Error: File '{filename}' not found")
        return None
    #lines = load_file_as_uint8_lines(filename)
    lines = []
    with open(filename, 'r') as f:
        for i, line in enumerate(f):
            if i >= SCREEN_HEIGHT:
                break
            # Remove newline and convert to uppercase
            line = line.rstrip('\n').upper().ljust(SCREEN_WIDTH)[:SCREEN_WIDTH]
            lines.append(line)
    
    # Pad with empty lines if needed
    while len(lines) < SCREEN_HEIGHT:
        lines.append(' ' * SCREEN_WIDTH)
    
    return lines

def screen_to_asm(screen_lines, output_file):
    """Convert screen layout to assembly code (complete cartridge)"""
    
    asm_code = """        * = $C000           ; cartridge ROM start

START:  
        ; Set up stack
        LDS     #$7FFF
        
        ; Clear screen with spaces
        LDX     #$0400
        LDA     #$20        ; space character
CLRSCR: STA     ,X+
        CMPX    #$0480
        BLO     CLRSCR
        
        ; Write screen content
"""
    
    # Generate code to write each character
    for row, line in enumerate(screen_lines):
        addr = SCREEN_BASE + (row * SCREEN_WIDTH)
        
        # Only write if line has non-space content
        if line.strip():
            asm_code += f"\n        ; Row {row}\n"
            asm_code += f"        LDX     #{addr}\n"
            
            for char in line:
                ascii_val = ord(char)
                asm_code += f"        LDA     #{ascii_val}        ; '{char}'\n"
                asm_code += f"        STA     ,X+\n"
    
    asm_code += """
FOREVER:
        BRA     FOREVER     ; infinite loop

        * = $FFFE
        FCB     $C0, $00    ; reset vector to $C000 (hardcoded)
"""
    
    # Write to file
    with open(output_file, 'w') as f:
        f.write(asm_code)
    
    print(f"✓ Cartridge code written to {output_file}")

def main():
    print("=" * 50)
    print("Dragon 32 Screen Designer")
    print("=" * 50)
    
    if len(sys.argv) < 2:
        print("\nUsage: python3 screen_designer.py <screen_file>")
        print("\nExample: python3 screen_designer.py screen_example.txt")
        print("\nThe tool will generate 'src/screen.asm' from your design.")
        return
    
    design_file = sys.argv[1]
    screen_lines = load_screen_from_file(design_file)
    
    if screen_lines:
        print(f"\n✓ Loaded screen from '{design_file}'")
        print("\nPreview (32 chars wide, 16 rows):")
        print("-" * 34)
        for i, line in enumerate(screen_lines):
            print(f"{i:2d}: |{line}|")
        print("-" * 34)
        
        # Generate assembly
        screen_to_asm(screen_lines, 'src/hello.asm')
        print("\nNow run: make")

if __name__ == '__main__':
    main()
