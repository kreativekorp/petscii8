.cpu 6502
.pragma PRG
.org $0810
.ent $

chrout	equ $FFD2
getin	equ $FFE4


; test pet2p8
	lda #$93
	jsr chrout
	lda #<pet2p8
	sta testfp+1
	lda #>pet2p8
	sta testfp+2
	jsr testsr
	jsr waitin

; test p82pet
	lda #$93
	jsr chrout
	lda #<p82pet
	sta testfp+1
	lda #>p82pet
	sta testfp+2
	jsr testsr
	jsr waitin

; test p8u2l
	lda #$93
	jsr chrout
	lda #<p8u2l
	sta testfp+1
	lda #>p8u2l
	sta testfp+2
	jsr testsr
	jsr waitin

; test p8l2u
	lda #$93
	jsr chrout
	lda #<p8l2u
	sta testfp+1
	lda #>p8l2u
	sta testfp+2
	jsr testsr
	jsr waitin

; test l92l9p
	lda #$93
	jsr chrout
	lda #<l92l9p
	sta testfp+1
	lda #>l92l9p
	sta testfp+2
	jsr testsr
	jsr waitin

; test l9p2l9
	lda #$93
	jsr chrout
	lda #<l9p2l9
	sta testfp+1
	lda #>l9p2l9
	sta testfp+2
	jsr testsr
	jsr waitin

; test pet2l9
	lda #$93
	jsr chrout
	lda #<pet2l9
	sta testfp+1
	lda #>pet2l9
	sta testfp+2
	jsr testsr
	jsr waitin

; test l92pet
	lda #$93
	jsr chrout
	lda #<l92pet
	sta testfp+1
	lda #>l92pet
	sta testfp+2
	jsr testsr
	jsr waitin

; test l9pu2l
	lda #$93
	jsr chrout
	lda #<l9pu2l
	sta testfp+1
	lda #>l9pu2l
	sta testfp+2
	jsr testsr
	jsr waitin

; test l9pl2u
	lda #$93
	jsr chrout
	lda #<l9pl2u
	sta testfp+1
	lda #>l9pl2u
	sta testfp+2
	jsr testsr
	jsr waitin

	lda #$93
	jmp chrout


testsr	ldx #$00
testlp	txa
	pha
testfp	jsr testex
	jsr hexout
	pla
	pha
	and #$0F
	cmp #$0F
	bne testnb
	lda #$0D
	jsr chrout
testnb	pla
	tax
	inx
	bne testlp
testex	rts

hexout	pha
	lsr
	lsr
	lsr
	lsr
	ora #$30
	cmp #$3A
	bcc hexohi
	adc #$06
hexohi	jsr chrout
	pla
	and #$0F
	ora #$30
	cmp #$3A
	bcc hexolo
	adc #$06
hexolo	jmp chrout

waitin	jsr getin
	cmp #$00
	beq waitin
	rts


.include "petscii8.s"
.include "latin9p.s"
