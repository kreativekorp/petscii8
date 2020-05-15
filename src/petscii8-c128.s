;
; PETSCII-8 - An 8-bit encoding with the goal of
; being compatible with both ASCII and PETSCII.
;
; Characters 00-7F are identical to ASCII.
;
; Characters 00-5F and 80-DF are identical to PETSCII
; with the exception of the characters £ ↑ ←, which
; have been relocated for sake of ASCII compatibility.
;
; Characters E0-FF include PETSCII characters which
; map to multiple Unicode characters (for round-trip
; compatibility), characters from the lowercase mode
; of PETSCII, and a selection of characters from
; the Teletext G2 character set and ISO Latin-9.
;
;        Printable        Non-Printable
;                           (inverted)
;
; 00 |                | |@ABCDEFGHIJKLMNO|
; 10 |                | |PQRSTUVWXYZ[\]^_|
; 20 | !"#$%&'()*+,-./|
; 30 |0123456789:;<=>?|
; 40 |@ABCDEFGHIJKLMNO|
; 50 |PQRSTUVWXYZ[\]^_|
; 60 |`abcdefghijklmno|
; 70 |pqrstuvwxyz{|}~ |
; 80 |                | |`abcdefghijklmno|
; 90 |                | |pqrstuvwxyz{|}~ |
; A0 | ▌▄▔▁▏▒▕🮏◤🮇├▗└┐▂|
; B0 |┌┴┬┤▎▍🮈🮂🮃▃🭿▖▝┘▘▚|
; C0 |─♠🭲🭸🭷🭶🭺🭱🭴╮╰╯🭼╲╱🭽|
; D0 |🭾●🭻♥🭰╭╳○♣🭵♦┼🮌│π◥|
; E0 |🭹¡¢£€¥•§🮕🮙◦«←↑→↓|
; F0 |°±®©×µ¶·÷¿✓»¬🭳🮖🮘|
;

.segment "CHARPET8"

;
; 00 Control Codes
;
; |@ABCDEFGHIJKLMNO| (inverted)
; |PQRSTUVWXYZ[\]^_| (inverted)
;

.byte %11000011
.byte %10011001
.byte %10010001
.byte %10010001
.byte %10011111
.byte %10011101
.byte %11000011
.byte %11111111

.byte %11100111
.byte %11000011
.byte %10011001
.byte %10000001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11111111

.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %11111111

.byte %11000011
.byte %10011001
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10011001
.byte %11000011
.byte %11111111

.byte %10000111
.byte %10010011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10010011
.byte %10000111
.byte %11111111

.byte %10000001
.byte %10011111
.byte %10011111
.byte %10000111
.byte %10011111
.byte %10011111
.byte %10000001
.byte %11111111

.byte %10000001
.byte %10011111
.byte %10011111
.byte %10000111
.byte %10011111
.byte %10011111
.byte %10011111
.byte %11111111

.byte %11000011
.byte %10011001
.byte %10011111
.byte %10010001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11111111

.byte %10011001
.byte %10011001
.byte %10011001
.byte %10000001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11111111

.byte %11000011
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11000011
.byte %11111111

.byte %11100001
.byte %11110011
.byte %11110011
.byte %11110011
.byte %11110011
.byte %10010011
.byte %11000111
.byte %11111111

.byte %10011001
.byte %10010011
.byte %10000111
.byte %10001111
.byte %10000111
.byte %10010011
.byte %10011001
.byte %11111111

.byte %10011111
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10011111
.byte %10000001
.byte %11111111

.byte %10011100
.byte %10001000
.byte %10000000
.byte %10010100
.byte %10011100
.byte %10011100
.byte %10011100
.byte %11111111

.byte %10011001
.byte %10001001
.byte %10000001
.byte %10000001
.byte %10010001
.byte %10011001
.byte %10011001
.byte %11111111

.byte %11000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11111111

.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %10011111
.byte %10011111
.byte %10011111
.byte %11111111

.byte %11000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11110001
.byte %11111111

.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %10000111
.byte %10010011
.byte %10011001
.byte %11111111

.byte %11000011
.byte %10011001
.byte %10011111
.byte %11000011
.byte %11111001
.byte %10011001
.byte %11000011
.byte %11111111

.byte %10000001
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11111111

.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11111111

.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11111111

.byte %10011100
.byte %10011100
.byte %10011100
.byte %10010100
.byte %10000000
.byte %10001000
.byte %10011100
.byte %11111111

.byte %10011001
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11000011
.byte %10011001
.byte %10011001
.byte %11111111

.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11111111

.byte %10000001
.byte %11111001
.byte %11110011
.byte %11100111
.byte %11001111
.byte %10011111
.byte %10000001
.byte %11111111

.byte %11000011
.byte %11001111
.byte %11001111
.byte %11001111
.byte %11001111
.byte %11001111
.byte %11000011
.byte %11111111

.byte %11111111
.byte %10011111
.byte %11001111
.byte %11100111
.byte %11110011
.byte %11111001
.byte %11111100
.byte %11111111

.byte %11000011
.byte %11110011
.byte %11110011
.byte %11110011
.byte %11110011
.byte %11110011
.byte %11000011
.byte %11111111

.byte %11111111
.byte %11100111
.byte %11000011
.byte %10011001
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111

.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %00000000

;
; 20 ASCII Punctuation
;
; | !"#$%&'()*+,-./|
; |0123456789:;<=>?|
;

.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00000000

.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

.byte %01100110
.byte %01100110
.byte %11111111
.byte %01100110
.byte %11111111
.byte %01100110
.byte %01100110
.byte %00000000

.byte %00011000
.byte %00111110
.byte %01100000
.byte %00111100
.byte %00000110
.byte %01111100
.byte %00011000
.byte %00000000

.byte %01100010
.byte %01100110
.byte %00001100
.byte %00011000
.byte %00110000
.byte %01100110
.byte %01000110
.byte %00000000

.byte %00111100
.byte %01100110
.byte %00111100
.byte %00111000
.byte %01100111
.byte %01100110
.byte %00111111
.byte %00000000

.byte %00000110
.byte %00001100
.byte %00011000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

.byte %00001100
.byte %00011000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00011000
.byte %00001100
.byte %00000000

.byte %00110000
.byte %00011000
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00011000
.byte %00110000
.byte %00000000

.byte %00000000
.byte %01100110
.byte %00111100
.byte %11111111
.byte %00111100
.byte %01100110
.byte %00000000
.byte %00000000

.byte %00000000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00000000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00110000

.byte %00000000
.byte %00000000
.byte %00000000
.byte %01111110
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00000000

.byte %00000000
.byte %00000011
.byte %00000110
.byte %00001100
.byte %00011000
.byte %00110000
.byte %01100000
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01101110
.byte %01110110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %00011000
.byte %00011000
.byte %00111000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00000000

.byte %00111100
.byte %01100110
.byte %00000110
.byte %00001100
.byte %00110000
.byte %01100000
.byte %01111110
.byte %00000000

.byte %00111100
.byte %01100110
.byte %00000110
.byte %00011100
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %00000110
.byte %00001110
.byte %00011110
.byte %01100110
.byte %01111111
.byte %00000110
.byte %00000110
.byte %00000000

.byte %01111110
.byte %01100000
.byte %01111100
.byte %00000110
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01100000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %01111110
.byte %01100110
.byte %00001100
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01100110
.byte %00111100
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00011000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00000000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00011000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00110000

.byte %00001110
.byte %00011000
.byte %00110000
.byte %01100000
.byte %00110000
.byte %00011000
.byte %00001110
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01111110
.byte %00000000
.byte %01111110
.byte %00000000
.byte %00000000
.byte %00000000

.byte %01110000
.byte %00011000
.byte %00001100
.byte %00000110
.byte %00001100
.byte %00011000
.byte %01110000
.byte %00000000

.byte %00111100
.byte %01100110
.byte %00000110
.byte %00001100
.byte %00011000
.byte %00000000
.byte %00011000
.byte %00000000

;
; 40 ASCII Uppercase
;
; |@ABCDEFGHIJKLMNO|
; |PQRSTUVWXYZ[\]^_|
;

.byte %00111100
.byte %01100110
.byte %01101110
.byte %01101110
.byte %01100000
.byte %01100010
.byte %00111100
.byte %00000000

.byte %00011000
.byte %00111100
.byte %01100110
.byte %01111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100110
.byte %00111100
.byte %00000000

.byte %01111000
.byte %01101100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01101100
.byte %01111000
.byte %00000000

.byte %01111110
.byte %01100000
.byte %01100000
.byte %01111000
.byte %01100000
.byte %01100000
.byte %01111110
.byte %00000000

.byte %01111110
.byte %01100000
.byte %01100000
.byte %01111000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01100000
.byte %01101110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %01100110
.byte %01100110
.byte %01100110
.byte %01111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

.byte %00111100
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00111100
.byte %00000000

.byte %00011110
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %01101100
.byte %00111000
.byte %00000000

.byte %01100110
.byte %01101100
.byte %01111000
.byte %01110000
.byte %01111000
.byte %01101100
.byte %01100110
.byte %00000000

.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01111110
.byte %00000000

.byte %01100011
.byte %01110111
.byte %01111111
.byte %01101011
.byte %01100011
.byte %01100011
.byte %01100011
.byte %00000000

.byte %01100110
.byte %01110110
.byte %01111110
.byte %01111110
.byte %01101110
.byte %01100110
.byte %01100110
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00001110
.byte %00000000

.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01111000
.byte %01101100
.byte %01100110
.byte %00000000

.byte %00111100
.byte %01100110
.byte %01100000
.byte %00111100
.byte %00000110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %01111110
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00000000

.byte %01100011
.byte %01100011
.byte %01100011
.byte %01101011
.byte %01111111
.byte %01110111
.byte %01100011
.byte %00000000

.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00111100
.byte %01100110
.byte %01100110
.byte %00000000

.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

.byte %01111110
.byte %00000110
.byte %00001100
.byte %00011000
.byte %00110000
.byte %01100000
.byte %01111110
.byte %00000000

.byte %00111100
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00111100
.byte %00000000

.byte %00000000
.byte %01100000
.byte %00110000
.byte %00011000
.byte %00001100
.byte %00000110
.byte %00000011
.byte %00000000

.byte %00111100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00111100
.byte %00000000

.byte %00000000
.byte %00011000
.byte %00111100
.byte %01100110
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111

;
; 60 ASCII Lowercase
;
; |`abcdefghijklmno|
; |pqrstuvwxyz{|}~ |
;

.byte %00110000
.byte %00011000
.byte %00001100
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00111100
.byte %00000110
.byte %00111110
.byte %01100110
.byte %00111110
.byte %00000000

.byte %01100000
.byte %01100000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01111100
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01100000
.byte %01100110
.byte %00111100
.byte %00000000

.byte %00000110
.byte %00000110
.byte %00111110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01111110
.byte %01100000
.byte %00111110
.byte %00000000

.byte %00011100
.byte %00110110
.byte %00110000
.byte %01111000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00111110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %01111100

.byte %01100000
.byte %01100000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

.byte %00011000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00000000

.byte %00000110
.byte %00000000
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %01100110
.byte %00111100

.byte %01100000
.byte %01100000
.byte %01100110
.byte %01101100
.byte %01111000
.byte %01111100
.byte %01100110
.byte %00000000

.byte %00111000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00111100
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01100011
.byte %01110111
.byte %01111111
.byte %01101011
.byte %01100011
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01111100
.byte %01100110
.byte %01100110
.byte %01111100
.byte %01100000
.byte %01100000

.byte %00000000
.byte %00000000
.byte %00111110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %00000110

.byte %00000000
.byte %00000000
.byte %01111100
.byte %01100110
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00111100
.byte %01100000
.byte %00111100
.byte %00000110
.byte %01111100
.byte %00000000

.byte %00110000
.byte %00110000
.byte %11111100
.byte %00110000
.byte %00110000
.byte %00110110
.byte %00011100
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01100011
.byte %01101011
.byte %01111111
.byte %00110110
.byte %00100010
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00111100
.byte %01100110
.byte %00000000

.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111110
.byte %00000110
.byte %01111100

.byte %00000000
.byte %00000000
.byte %01111110
.byte %00001100
.byte %00011000
.byte %00110000
.byte %01111110
.byte %00000000

.byte %00001110
.byte %00011000
.byte %00011000
.byte %01110000
.byte %00011000
.byte %00011000
.byte %00001110
.byte %00000000

.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000

.byte %01110000
.byte %00011000
.byte %00011000
.byte %00001110
.byte %00011000
.byte %00011000
.byte %01110000
.byte %00000000

.byte %00111011
.byte %01101110
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

;
; 80 Control Codes
;
; |`abcdefghijklmno| (inverted)
; |pqrstuvwxyz{|}~ | (inverted)
;

.byte %11001111
.byte %11100111
.byte %11110011
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111

.byte %11111111
.byte %11111111
.byte %11000011
.byte %11111001
.byte %11000001
.byte %10011001
.byte %11000001
.byte %11111111

.byte %10011111
.byte %10011111
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10000011
.byte %11111111

.byte %11111111
.byte %11111111
.byte %11000011
.byte %10011001
.byte %10011111
.byte %10011001
.byte %11000011
.byte %11111111

.byte %11111001
.byte %11111001
.byte %11000001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000001
.byte %11111111

.byte %11111111
.byte %11111111
.byte %11000011
.byte %10011001
.byte %10000001
.byte %10011111
.byte %11000001
.byte %11111111

.byte %11100011
.byte %11001001
.byte %11001111
.byte %10000111
.byte %11001111
.byte %11001111
.byte %11001111
.byte %11111111

.byte %11111111
.byte %11111111
.byte %11000001
.byte %10011001
.byte %10011001
.byte %11000001
.byte %11111001
.byte %10000011

.byte %10011111
.byte %10011111
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11111111

.byte %11100111
.byte %11111111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11111111

.byte %11111001
.byte %11111111
.byte %11111001
.byte %11111001
.byte %11111001
.byte %11111001
.byte %10011001
.byte %11000011

.byte %10011111
.byte %10011111
.byte %10011001
.byte %10010011
.byte %10000111
.byte %10000011
.byte %10011001
.byte %11111111

.byte %11000111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11000011
.byte %11111111

.byte %11111111
.byte %11111111
.byte %10011100
.byte %10001000
.byte %10000000
.byte %10010100
.byte %10011100
.byte %11111111

.byte %11111111
.byte %11111111
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11111111

.byte %11111111
.byte %11111111
.byte %11000011
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11111111

.byte %11111111
.byte %11111111
.byte %10000011
.byte %10011001
.byte %10011001
.byte %10000011
.byte %10011111
.byte %10011111

.byte %11111111
.byte %11111111
.byte %11000001
.byte %10011001
.byte %10011001
.byte %11000001
.byte %11111001
.byte %11111001

.byte %11111111
.byte %11111111
.byte %10000011
.byte %10011001
.byte %10011111
.byte %10011111
.byte %10011111
.byte %11111111

.byte %11111111
.byte %11111111
.byte %11000011
.byte %10011111
.byte %11000011
.byte %11111001
.byte %10000011
.byte %11111111

.byte %11001111
.byte %11001111
.byte %00000011
.byte %11001111
.byte %11001111
.byte %11001001
.byte %11100011
.byte %11111111

.byte %11111111
.byte %11111111
.byte %10011001
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11111111

.byte %11111111
.byte %11111111
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11111111

.byte %11111111
.byte %11111111
.byte %10011100
.byte %10010100
.byte %10000000
.byte %11001001
.byte %11011101
.byte %11111111

.byte %11111111
.byte %11111111
.byte %10011001
.byte %11000011
.byte %11100111
.byte %11000011
.byte %10011001
.byte %11111111

.byte %11111111
.byte %11111111
.byte %10011001
.byte %10011001
.byte %10011001
.byte %11000001
.byte %11111001
.byte %10000011

.byte %11111111
.byte %11111111
.byte %10000001
.byte %11110011
.byte %11100111
.byte %11001111
.byte %10000001
.byte %11111111

.byte %11110001
.byte %11100111
.byte %11100111
.byte %10001111
.byte %11100111
.byte %11100111
.byte %11110001
.byte %11111111

.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111
.byte %11100111

.byte %10001111
.byte %11100111
.byte %11100111
.byte %11110001
.byte %11100111
.byte %11100111
.byte %10001111
.byte %11111111

.byte %11000100
.byte %10010001
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111

.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111

;
; A0 PETSCII on non-alphabetic keys
;
; | ▌▄▔▁▏▒▕🮏◤🮇├▗└┐▂|
; |┌┴┬┤▎▍🮈🮂🮃▃🭿▖▝┘▘▚|
;

; U+00A0 NO-BREAK SPACE
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+258C LEFT HALF BLOCK
.byte %11110000
.byte %11110000
.byte %11110000
.byte %11110000
.byte %11110000
.byte %11110000
.byte %11110000
.byte %11110000

; U+2584 LOWER HALF BLOCK
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %11111111
.byte %11111111

; U+2594 UPPER ONE EIGHTH BLOCK
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+2581 LOWER ONE EIGHTH BLOCK
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111

; U+258F LEFT ONE EIGHTH BLOCK
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000

; U+2592 MEDIUM SHADE
.byte %11001100
.byte %11001100
.byte %00110011
.byte %00110011
.byte %11001100
.byte %11001100
.byte %00110011
.byte %00110011

; U+2595 RIGHT ONE EIGHTH BLOCK
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011

; U+1FB8F LOWER HALF MEDIUM SHADE
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11001100
.byte %11001100
.byte %00110011
.byte %00110011

; U+25E4 BLACK UPPER LEFT TRIANGLE
.byte %11111111
.byte %11111110
.byte %11111100
.byte %11111000
.byte %11110000
.byte %11100000
.byte %11000000
.byte %10000000

; U+1FB87 RIGHT ONE QUARTER BLOCK
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011

; U+251C BOX DRAWINGS LIGHT VERTICAL AND RIGHT
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011111
.byte %00011111
.byte %00011000
.byte %00011000
.byte %00011000

; U+2597 QUADRANT LOWER RIGHT
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00001111
.byte %00001111
.byte %00001111
.byte %00001111

; U+2514 BOX DRAWINGS LIGHT UP AND RIGHT
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011111
.byte %00011111
.byte %00000000
.byte %00000000
.byte %00000000

; U+2510 BOX DRAWINGS LIGHT DOWN AND LEFT
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111000
.byte %11111000
.byte %00011000
.byte %00011000
.byte %00011000

; U+2582 LOWER ONE QUARTER BLOCK
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111

; U+250C BOX DRAWINGS LIGHT DOWN AND RIGHT
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00011111
.byte %00011111
.byte %00011000
.byte %00011000
.byte %00011000

; U+2534 BOX DRAWINGS LIGHT UP AND HORIZONTAL
.byte %00011000
.byte %00011000
.byte %00011000
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000

; U+252C BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %00011000
.byte %00011000
.byte %00011000

; U+2524 BOX DRAWINGS LIGHT VERTICAL AND LEFT
.byte %00011000
.byte %00011000
.byte %00011000
.byte %11111000
.byte %11111000
.byte %00011000
.byte %00011000
.byte %00011000

; U+258E LEFT ONE QUARTER BLOCK
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000

; U+258D LEFT THREE EIGHTHS BLOCK
.byte %11100000
.byte %11100000
.byte %11100000
.byte %11100000
.byte %11100000
.byte %11100000
.byte %11100000
.byte %11100000

; U+1FB88 RIGHT THREE EIGHTHS BLOCK
.byte %00000111
.byte %00000111
.byte %00000111
.byte %00000111
.byte %00000111
.byte %00000111
.byte %00000111
.byte %00000111

; U+1FB82 UPPER ONE QUARTER BLOCK
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+1FB83 UPPER THREE EIGHTHS BLOCK
.byte %11111111
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+2583 LOWER THREE EIGHTHS BLOCK
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %11111111

; U+1FB7F RIGHT AND LOWER ONE EIGHTH BLOCK
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %11111111
.byte %11111111

; U+2596 QUADRANT LOWER LEFT
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11110000
.byte %11110000
.byte %11110000
.byte %11110000

; U+259D QUADRANT UPPER RIGHT
.byte %00001111
.byte %00001111
.byte %00001111
.byte %00001111
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+2518 BOX DRAWINGS LIGHT UP AND LEFT
.byte %00011000
.byte %00011000
.byte %00011000
.byte %11111000
.byte %11111000
.byte %00000000
.byte %00000000
.byte %00000000

; U+2598 QUADRANT UPPER LEFT
.byte %11110000
.byte %11110000
.byte %11110000
.byte %11110000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+259A QUADRANT UPPER LEFT AND LOWER RIGHT
.byte %11110000
.byte %11110000
.byte %11110000
.byte %11110000
.byte %00001111
.byte %00001111
.byte %00001111
.byte %00001111

;
; C0 PETSCII on alphabetic keys
;
; |─♠🭲🭸🭷🭶🭺🭱🭴╮╰╯🭼╲╱🭽|
; |🭾●🭻♥🭰╭╳○♣🭵♦┼🮌│π◥|
;

; U+2500 BOX DRAWINGS LIGHT HORIZONTAL
; Also mappable to U+1FB79 HORIZONTAL ONE EIGHTH BLOCK-5.
; We use E0 for the version mapped to that character.
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000

; U+2660 BLACK SPADE SUIT
.byte %00001000
.byte %00011100
.byte %00111110
.byte %01111111
.byte %01111111
.byte %00011100
.byte %00111110
.byte %00000000

; U+1FB72 VERTICAL ONE EIGHTH BLOCK-4
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000

; U+1FB78 HORIZONTAL ONE EIGHTH BLOCK-4
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000

; U+1FB77 HORIZONTAL ONE EIGHTH BLOCK-3
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+1FB76 HORIZONTAL ONE EIGHTH BLOCK-2
.byte %00000000
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+1FB7A HORIZONTAL ONE EIGHTH BLOCK-6
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000

; U+1FB71 VERTICAL ONE EIGHTH BLOCK-3
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000
.byte %00110000

; U+1FB74 VERTICAL ONE EIGHTH BLOCK-6
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100
.byte %00001100

; U+256E BOX DRAWINGS LIGHT ARC DOWN AND LEFT
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11100000
.byte %11110000
.byte %00111000
.byte %00011000
.byte %00011000

; U+2570 BOX DRAWINGS LIGHT ARC UP AND RIGHT
.byte %00011000
.byte %00011000
.byte %00011100
.byte %00001111
.byte %00000111
.byte %00000000
.byte %00000000
.byte %00000000

; U+256F BOX DRAWINGS LIGHT ARC UP AND LEFT
.byte %00011000
.byte %00011000
.byte %00111000
.byte %11110000
.byte %11100000
.byte %00000000
.byte %00000000
.byte %00000000

; U+1FB7C LEFT AND LOWER ONE EIGHTH BLOCK
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11111111
.byte %11111111

; U+2572 BOX DRAWINGS LIGHT DIAGONAL UPPER LEFT TO LOWER RIGHT
.byte %11000000
.byte %11100000
.byte %01110000
.byte %00111000
.byte %00011100
.byte %00001110
.byte %00000111
.byte %00000011

; U+2571 BOX DRAWINGS LIGHT DIAGONAL UPPER RIGHT TO LOWER LEFT
.byte %00000011
.byte %00000111
.byte %00001110
.byte %00011100
.byte %00111000
.byte %01110000
.byte %11100000
.byte %11000000

; U+1FB7D LEFT AND UPPER ONE EIGHTH BLOCK
.byte %11111111
.byte %11111111
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000
.byte %11000000

; U+1FB7E RIGHT AND UPPER ONE EIGHTH BLOCK
.byte %11111111
.byte %11111111
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011
.byte %00000011

; U+25CF BLACK CIRCLE
; Also mappable to U+2022 BULLET.
; We use E6 for the version mapped to that character.
.byte %00000000
.byte %00111100
.byte %01111110
.byte %01111110
.byte %01111110
.byte %01111110
.byte %00111100
.byte %00000000

; U+1FB7B HORIZONTAL ONE EIGHTH BLOCK-7
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %00000000

; U+2665 BLACK HEART SUIT
.byte %00110110
.byte %01111111
.byte %01111111
.byte %01111111
.byte %00111110
.byte %00011100
.byte %00001000
.byte %00000000

; U+1FB70 VERTICAL ONE EIGHTH BLOCK-2
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000
.byte %01100000

; U+256D BOX DRAWINGS LIGHT ARC DOWN AND RIGHT
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000111
.byte %00001111
.byte %00011100
.byte %00011000
.byte %00011000

; U+2573 BOX DRAWINGS LIGHT DIAGONAL CROSS
.byte %11000011
.byte %11100111
.byte %01111110
.byte %00111100
.byte %00111100
.byte %01111110
.byte %11100111
.byte %11000011

; U+25CB WHITE CIRCLE
; Also mappable to U+25E6 WHITE BULLET.
; We use EA for the version mapped to that character.
.byte %00000000
.byte %00111100
.byte %01111110
.byte %01100110
.byte %01100110
.byte %01111110
.byte %00111100
.byte %00000000

; U+2663 BLACK CLUB SUIT
.byte %00011000
.byte %00011000
.byte %01100110
.byte %01100110
.byte %00011000
.byte %00011000
.byte %00111100
.byte %00000000

; U+1FB75 VERTICAL ONE EIGHTH BLOCK-7
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110
.byte %00000110

; U+2666 BLACK DIAMOND SUIT
.byte %00001000
.byte %00011100
.byte %00111110
.byte %01111111
.byte %00111110
.byte %00011100
.byte %00001000
.byte %00000000

; U+253C BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
.byte %00011000
.byte %00011000
.byte %00011000
.byte %11111111
.byte %11111111
.byte %00011000
.byte %00011000
.byte %00011000

; U+1FB8C LEFT HALF MEDIUM SHADE
.byte %11000000
.byte %11000000
.byte %00110000
.byte %00110000
.byte %11000000
.byte %11000000
.byte %00110000
.byte %00110000

; U+2502 BOX DRAWINGS LIGHT VERTICAL
; Also mappable to U+1FB73 VERTICAL ONE EIGHTH BLOCK-5.
; We use FD for the version mapped to that character.
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000

; U+03C0 GREEK SMALL LETTER PI
.byte %00000000
.byte %00000000
.byte %00000011
.byte %00111110
.byte %01110110
.byte %00110110
.byte %00110110
.byte %00000000

; U+25E5 BLACK UPPER RIGHT TRIANGLE
.byte %11111111
.byte %01111111
.byte %00111111
.byte %00011111
.byte %00001111
.byte %00000111
.byte %00000011
.byte %00000001

;
; E0 Miscellaneous
; Picked from PETSCII lowercase mode, Teletext G2, and ISO Latin-9.
;
; |🭹¡¢£€¥•§🮕🮙◦«←↑→↓|
; |°±®©×µ¶·÷¿✓»¬🭳🮖🮘|
;
;
; Characters in ISO Latin-9 not in PETSCII-8:
; |      Š š ª  - ¯|
; |  ²³Ž   ž¹º ŒœŸ |
; |ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ|
; |ÐÑÒÓÔÕÖ ØÙÚÛÜÝÞß|
; |àáâãäåæçèéêëìíîï|
; |ðñòóôõö øùúûüýþÿ|
;
; Characters in Teletext G2 not in PETSCII-8:
; |        ¤‘“     |
; |  ²³     ’” ¼½¾ |
; |===diacritics===|
; | ¹  ™♪₠‰α   ⅛⅜⅝⅞|
; |ΩÆÐªĦ ĲĿŁØŒºÞŦŊŉ|
; |ĸæđðħıĳŀłøœßþŧŋ■|
;
; You can see that as far as non-alphabetic
; characters go we're not missing much.
;

; U+1FB79 HORIZONTAL ONE EIGHTH BLOCK-5
; Also mappable to U+2500 BOX DRAWINGS LIGHT HORIZONTAL.
; We use C0 for the version mapped to that character.
.byte %00000000
.byte %00000000
.byte %00000000
.byte %11111111
.byte %11111111
.byte %00000000
.byte %00000000
.byte %00000000

; U+00A1 INVERTED EXCLAMATION MARK
; A1 in Teletext G2 and ISO Latin-9, the reason for encoding at E1.
.byte %00000000
.byte %00011000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000

; U+00A2 CENT SIGN
; A2 in Teletext G2 and ISO Latin-9, the reason for encoding at E2.
.byte %00000000
.byte %00011000
.byte %00111100
.byte %01100000
.byte %01100000
.byte %01100000
.byte %00111100
.byte %00011000

; U+00A3 POUND SIGN
; 5C in PETSCII. Relocated for sake of ASCII compatibility.
; A3 in Teletext G2 and ISO Latin-9, the reason for encoding at E3.
.byte %00001100
.byte %00010010
.byte %00110000
.byte %01111100
.byte %00110000
.byte %01100010
.byte %11111100
.byte %00000000

; U+20AC EURO SIGN
; A4 in ISO Latin-9, the reason for encoding at E4.
.byte %00011110
.byte %00110011
.byte %01111000
.byte %00110000
.byte %01111000
.byte %00110011
.byte %00011110
.byte %00000000

; U+00A5 YEN SIGN
; A5 in Teletext G2 and ISO Latin-9, the reason for encoding at E5.
.byte %01100110
.byte %01100110
.byte %01100110
.byte %00111100
.byte %00011000
.byte %01111110
.byte %00011000
.byte %00000000

; U+2022 BULLET
; Also mappable to U+25CF BLACK CIRCLE.
; We use D1 for the version mapped to that character.
.byte %00000000
.byte %00111100
.byte %01111110
.byte %01111110
.byte %01111110
.byte %01111110
.byte %00111100
.byte %00000000

; U+00A7 SECTION SIGN
; A7 in Teletext G2 and ISO Latin-9, the reason for encoding at E7.
.byte %00111100
.byte %01100000
.byte %00111100
.byte %01100110
.byte %00111100
.byte %00000110
.byte %00111100
.byte %00000000

; U+1FB95 CHECKER BOARD FILL
; DE in PETSCII lowercase mode on the Commodore PET and VIC-20.
; Can't be FE in PETSCII-8 due to collision with INVERSE CHECKER BOARD FILL.
.byte %11001100
.byte %11001100
.byte %00110011
.byte %00110011
.byte %11001100
.byte %11001100
.byte %00110011
.byte %00110011

; U+1FB99 UPPER RIGHT TO LOWER LEFT FILL
; A9 in PETSCII lowercase mode.
.byte %11001100
.byte %10011001
.byte %00110011
.byte %01100110
.byte %11001100
.byte %10011001
.byte %00110011
.byte %01100110

; U+25E6 WHITE BULLET
; Also mappable to U+25CB WHITE CIRCLE.
; We use D7 for the version mapped to that character.
.byte %00000000
.byte %00111100
.byte %01111110
.byte %01100110
.byte %01100110
.byte %01111110
.byte %00111100
.byte %00000000

; U+00AB LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
; AB in Teletext G2 and ISO Latin-9, the reason for encoding at EB.
.byte %00000000
.byte %00011011
.byte %00110110
.byte %01101100
.byte %00110110
.byte %00011011
.byte %00000000
.byte %00000000

; U+2190 LEFTWARDS ARROW
; 5F in PETSCII. Relocated for sake of ASCII compatibility.
; AC in Teletext G2, the reason for encoding at EC.
.byte %00000000
.byte %00010000
.byte %00110000
.byte %01111111
.byte %01111111
.byte %00110000
.byte %00010000
.byte %00000000

; U+2191 UPWARDS ARROW
; 5E in PETSCII. Relocated for sake of ASCII compatibility.
; AD in Teletext G2, the reason for encoding at ED.
.byte %00000000
.byte %00011000
.byte %00111100
.byte %01111110
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000

; U+2192 RIGHTWARDS ARROW
; AE in Teletext G2, the reason for encoding at EE.
.byte %00000000
.byte %00001000
.byte %00001100
.byte %11111110
.byte %11111110
.byte %00001100
.byte %00001000
.byte %00000000

; U+2193 DOWNWARDS ARROW
; AF in Teletext G2, the reason for encoding at EF.
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00111100
.byte %00011000
.byte %00000000

; U+00B0 DEGREE SIGN
; B0 in Teletext G2 and ISO Latin-9, the reason for encoding at F0.
.byte %00111100
.byte %01100110
.byte %00111100
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00000000

; U+00B1 PLUS-MINUS SIGN
; B1 in Teletext G2 and ISO Latin-9, the reason for encoding at F1.
.byte %00000000
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00011000
.byte %00011000
.byte %01111110
.byte %00000000

; U+00AE REGISTERED SIGN
; D2 in Teletext G2, the reason for encoding at F2.
; Also AE in ISO Latin-9.
; Can't be EE in PETSCII-8 due to collision with RIGHTWARDS ARROW.
.byte %00011100
.byte %00100010
.byte %01011101
.byte %01011001
.byte %01010101
.byte %00100010
.byte %00011100
.byte %00000000

; U+00A9 COPYRIGHT SIGN
; D3 in Teletext G2, the reason for encoding at F3.
; Also A9 in ISO Latin-9.
; Can't be E9 in PETSCII-8 due to collision with UPPER RIGHT TO LOWER LEFT FILL.
.byte %00011100
.byte %00100010
.byte %01001101
.byte %01010001
.byte %01001101
.byte %00100010
.byte %00011100
.byte %00000000

; U+00D7 MULTIPLICATION SIGN
; B4 in Teletext G2, the reason for encoding at F4.
; Also D7 in ISO Latin-9.
; Can't be F7 in PETSCII-8 due to collision with MIDDLE DOT.
.byte %00000000
.byte %01100110
.byte %00111100
.byte %00011000
.byte %00111100
.byte %01100110
.byte %00000000
.byte %00000000

; U+00B5 MICRO SIGN
; B5 in Teletext G2 and ISO Latin-9, the reason for encoding at F5.
.byte %00000000
.byte %00000000
.byte %01100110
.byte %01100110
.byte %01100110
.byte %01100110
.byte %11111110
.byte %11000000

; U+00B6 PILCROW SIGN
; B6 in Teletext G2 and ISO Latin-9, the reason for encoding at F6.
.byte %01111111
.byte %11011011
.byte %11011011
.byte %01111111
.byte %00011011
.byte %00011011
.byte %00011011
.byte %00000000

; U+00B7 MIDDLE DOT
; B7 in Teletext G2 and ISO Latin-9, the reason for encoding at F7.
.byte %00000000
.byte %00000000
.byte %00000000
.byte %00011000
.byte %00011000
.byte %00000000
.byte %00000000
.byte %00000000

; U+00F7 DIVISION SIGN
; B8 in Teletext G2, the reason for encoding at F8.
; Also F7 in ISO Latin-9.
; Can't be F7 in PETSCII-8 due to collision with MIDDLE DOT.
.byte %00000000
.byte %00011000
.byte %00000000
.byte %01111110
.byte %00000000
.byte %00011000
.byte %00000000
.byte %00000000

; U+00BF INVERTED QUESTION MARK
; BF in Teletext G2 and ISO Latin-9.
; Can't be FF in PETSCII-8 due to collision with UPPER LEFT TO LOWER RIGHT FILL.
.byte %00000000
.byte %00011000
.byte %00000000
.byte %00011000
.byte %00110000
.byte %01100000
.byte %01100110
.byte %00111100

; U+2713 CHECK MARK
; BA in PETSCII lowercase mode.
.byte %00000001
.byte %00000011
.byte %00000110
.byte %01101100
.byte %01111000
.byte %01110000
.byte %01100000
.byte %00000000

; U+00BB RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
; BB in Teletext G2 and ISO Latin-9, the reason for encoding at FB.
.byte %00000000
.byte %01101100
.byte %00110110
.byte %00011011
.byte %00110110
.byte %01101100
.byte %00000000
.byte %00000000

; U+00AC NOT SIGN
; AC in ISO Latin-9.
; Can't be EC in PETSCII-8 due to collision with LEFTWARDS ARROW.
.byte %00000000
.byte %00000000
.byte %01111110
.byte %00000110
.byte %00000110
.byte %00000000
.byte %00000000
.byte %00000000

; U+1FB73 VERTICAL ONE EIGHTH BLOCK-5
; Also mappable to U+2502 BOX DRAWINGS LIGHT VERTICAL.
; We use DD for the version mapped to that character.
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000
.byte %00011000

; U+1FB96 INVERSE CHECKER BOARD FILL
; DE in PETSCII lowercase mode on the Commodore 64 and 128.
.byte %00110011
.byte %00110011
.byte %11001100
.byte %11001100
.byte %00110011
.byte %00110011
.byte %11001100
.byte %11001100

; U+1FB98 UPPER LEFT TO LOWER RIGHT FILL
; DF in PETSCII lowercase mode.
.byte %00110011
.byte %10011001
.byte %11001100
.byte %01100110
.byte %00110011
.byte %10011001
.byte %11001100
.byte %01100110
