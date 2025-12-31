        * = $C000           ; cartridge ROM start

START:  
        ; Set up stack
        LDS     #$7FFF
        
        ; Write "HELLO WORLD" directly to screen, one character at a time
        LDX     #$0400      ; start of screen ($0400)
        
        LDA     #$48        ; 'H'
        STA     ,X+
        LDA     #$45        ; 'E'
        STA     ,X+
        LDA     #$4C        ; 'L'
        STA     ,X+
        LDA     #$4C        ; 'L'
        STA     ,X+
        LDA     #$4F        ; 'O'
        STA     ,X+
        LDA     #$20        ; ' '
        STA     ,X+
        LDA     #$57        ; 'W'
        STA     ,X+
        LDA     #$4F        ; 'O'
        STA     ,X+
        LDA     #$52        ; 'R'
        STA     ,X+
        LDA     #$4C        ; 'L'
        STA     ,X+
        LDA     #$44        ; 'D'
        STA     ,X+
        
FOREVER:
        BRA     FOREVER     ; infinite loop

        * = $FFFE
        FCB     $C0, $00    ; reset vector to $C000 (hardcoded)