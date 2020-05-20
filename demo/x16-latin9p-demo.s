.cpu 6502
.pragma PRG
.org $0810
.ent $

veraal	equ $9F20
veraam	equ $9F21
veraah	equ $9F22
verad0	equ $9F23
veract	equ $9F25
chrout	equ $FFD2

	; clear screen
	lda #$93
	jsr chrout

	; set ISO mode
	lda #$0F
	jsr chrout

	; load character set
	lda #$00
	ldx #<charl9p
	ldy #>charl9p
	jsr chrset

	; print header 1
	lda #<head1
	sta prtstr+1
	lda #>head1
	sta prtstr+2
	ldx #$00
	ldy #$00
	jsr prtstr

	; print header 2
	lda #<head2
	sta prtstr+1
	lda #>head2
	sta prtstr+2
	ldx #$00
	ldy #$01
	jsr prtstr

	; print ISO 8859-15 table
	lda #<l92l9p
	sta ctabfp+1
	lda #>l92l9p
	sta ctabfp+2
	ldx #$00
	ldy #$02
	jsr chrtab

	; print PETSCII upper table
	lda #<pet2l9
	sta ctabfp+1
	lda #>pet2l9
	sta ctabfp+2
	ldx #$12
	ldy #$02
	jsr chrtab

	; print PETSCII lower table
	lda #<plc2l9
	sta ctabfp+1
	lda #>plc2l9
	sta ctabfp+2
	ldx #$24
	ldy #$02
	jsr chrtab

	; print Latin-9P table
	lda #<ctabex
	sta ctabfp+1
	lda #>ctabex
	sta ctabfp+2
	ldx #$36
	ldy #$02
	jsr chrtab

	; move down 20 lines
	ldy #$14
	lda #$11
unomas	jsr chrout
	dey
	bne unomas
	rts

; PETSCII lowercase to Latin-9P
plc2l9	jsr pet2l9
	jmp l9pu2l

head1	.byte "  ISO 8859-15      PETSCII Upper     PETSCII Lower        Latin-9P    ", 0
head2	.byte "----------------  ----------------  ----------------  ----------------", 0



; Print a character table.
; ctabfp+1 = mapping function pointer, X = column, Y = row
chrtab	lda #$00
ctabl2	phx
ctabl1	pha
ctabfp	jsr ctabex
	jsr prtchr
	pla
	inc
	beq ctablb
	pha
	and #$0F
	beq ctabnl
	pla
	inx
	bra ctabl1
ctabnl	pla
	plx
	iny
	bra ctabl2
ctablb	plx
ctabex	rts

; Print a string.
; prtstr+1 = string address, X = column, Y = row
; This is self-modifying!
prtstr	lda prtnul
	beq prtex
	jsr prtchr
	inx
	inc prtstr+1
	bne prtstr
	inc prtstr+2
	bne prtstr
prtex	rts
prtnul	brk

; Print a character.
; A = character, X = column, Y = row
; Returns with A, X, Y unchanged.
prtchr	pha
	lda #$00
	sta veract
	sta veraah
	sty veraam
	txa
	asl
	sta veraal
	pla
	sta verad0
	rts

; Load a character set.
; X = low byte, Y = high byte
; This is self-modifying!
chrset	stx csetl1+1
	sty csetl1+2
	lda #$00
	sta veract
	lda #$10
	sta veraah
	lda #$F8
	sta veraam
	lda #$00
	sta veraal
	ldy #$08
	ldx #$00
csetl1	lda $CDEF
	sta verad0
	inc csetl1+1
	bne csetl2
	inc csetl1+2
csetl2	dex
	bne csetl1
	dey
	bne csetl1
	rts



.include "latin9p.s"
.include "latin9p-c64.s"
