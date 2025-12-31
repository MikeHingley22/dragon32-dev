        * = $C000           ; cartridge ROM start

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

        ; Row 0
        LDX     #1024
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+

        ; Row 1
        LDX     #1056
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #88        ; 'X'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #77        ; 'M'
        STA     ,X+
        LDA     #80        ; 'P'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #71        ; 'G'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #51        ; '3'
        STA     ,X+
        LDA     #50        ; '2'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #71        ; 'G'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+

        ; Row 2
        LDX     #1088
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+
        LDA     #42        ; '*'
        STA     ,X+

        ; Row 3
        LDX     #1120
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #88        ; 'X'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #77        ; 'M'
        STA     ,X+
        LDA     #80        ; 'P'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #71        ; 'G'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #45        ; '-'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 4
        LDX     #1152
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #86        ; 'V'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #85        ; 'U'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #89        ; 'Y'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #87        ; 'W'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #66        ; 'B'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 5
        LDX     #1184
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #77        ; 'M'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #77        ; 'M'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #89        ; 'Y'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 6
        LDX     #1216
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #86        ; 'V'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #45        ; '-'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #87        ; 'W'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #86        ; 'V'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 7
        LDX     #1248
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #39        ; '''
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #77        ; 'M'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #71        ; 'G'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #70        ; 'F'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #70        ; 'F'
        STA     ,X+
        LDA     #85        ; 'U'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #85        ; 'U'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 8
        LDX     #1280
        LDA     #77        ; 'M'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #75        ; 'K'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #70        ; 'F'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #88        ; 'X'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 10
        LDX     #1344
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #85        ; 'U'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #80        ; 'P'
        STA     ,X+
        LDA     #89        ; 'Y'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #80        ; 'P'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 11
        LDX     #1376
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #86        ; 'V'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #80        ; 'P'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #71        ; 'G'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #70        ; 'F'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #77        ; 'M'
        STA     ,X+
        LDA     #66        ; 'B'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #89        ; 'Y'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 12
        LDX     #1408
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #44        ; ','
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #87        ; 'W'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #66        ; 'B'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #66        ; 'B'
        STA     ,X+
        LDA     #85        ; 'U'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 13
        LDX     #1440
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #80        ; 'P'
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #65        ; 'A'
        STA     ,X+
        LDA     #89        ; 'Y'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #84        ; 'T'
        STA     ,X+
        LDA     #72        ; 'H'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #83        ; 'S'
        STA     ,X+
        LDA     #67        ; 'C'
        STA     ,X+
        LDA     #82        ; 'R'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #46        ; '.'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

        ; Row 15
        LDX     #1504
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #45        ; '-'
        STA     ,X+
        LDA     #45        ; '-'
        STA     ,X+
        LDA     #61        ; '='
        STA     ,X+
        LDA     #61        ; '='
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #68        ; 'D'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #79        ; 'O'
        STA     ,X+
        LDA     #70        ; 'F'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #76        ; 'L'
        STA     ,X+
        LDA     #73        ; 'I'
        STA     ,X+
        LDA     #78        ; 'N'
        STA     ,X+
        LDA     #69        ; 'E'
        STA     ,X+
        LDA     #61        ; '='
        STA     ,X+
        LDA     #61        ; '='
        STA     ,X+
        LDA     #45        ; '-'
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+
        LDA     #32        ; ' '
        STA     ,X+

FOREVER:
        BRA     FOREVER     ; infinite loop

        * = $FFFE
        FCB     $C0, $00    ; reset vector to $C000 (hardcoded)
