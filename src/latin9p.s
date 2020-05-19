; Conversion routines for Latin-9P encoding.

; ISO Latin-9 to Latin-9P
l92l9p	cmp #$21	; if A < $21 return $20 (space)
	bcc l9isp
	cmp #$7F	; if A < $7F return A (no remap)
	bcc l9inrm
	cmp #$A1	; if A < $A1 return $20 (space)
	bcc l9isp
	cmp #$AD	; if A <> $AD return A (no remap)
	bne l9inrm
	lda #$2D	; return $2D (hyphen)
	rts
l9isp	lda #$20	; return $20 (space)
l9inrm	rts

; Latin-9P to ISO Latin-9
l9p2l9	cmp #$20	; if A < $20 return $3F (?)
	bcc l9ifgn
	cmp #$7F	; if A < $7F return A (no remap)
	bcc l9inrm
	cmp #$A1	; if A < $A1 return $3F (?)
	bcc l9ifgn
	cmp #$AD	; if A <> $AD return A (no remap)
	bne l9inrm
l9ifgn	lda #$3F	; return $3F (unmappable character)
	rts

; PETSCII uppercase to Latin-9P
pet2l9	cmp #$21	; if A < $21 return $20 (space)
	bcc l9sp
	cmp #$5C	; if A = $5C return A ^ $FF (maps $5C to $A3)
	beq l9pnds
	cmp #$5E	; if A = $5E return A ^ $5D (maps $5E to $03)
	beq l9upar
	cmp #$5F	; if A = $5F return A ^ $5B (maps $5F to $04)
	beq l9ltar
	cmp #$60	; if A < $60 return A (no remap)
	bcc l9norm
	cmp #$80	; if A < $80 return A ^ $E0 (maps $60-$7F to $80-$9F)
	bcc l9fd60
l9fdE0	cmp #$A1	; if A < $A1 return $20 (space)
	bcc l9sp
	cmp #$A3	; if A = $A3 return A ^ $0C (maps $A3 to $AF)
	beq l9macr
	cmp #$A4	; if A = $A4 return A ^ $FB (maps $A4 to $5F)
	beq l9lwln
	cmp #$C0	; if A < $C0 return A ^ $A0 (maps $A0-$BF to $00-$1F)
	bcc l9fdA0
	cmp #$E0	; if A < $E0 return A ^ $40 (maps $C0-$DF to $80-$9F)
	bcc l9fdC0
	cmp #$FF	; if A = $FF return $9E (pi)
	beq l9pi
	eor #$40	; A ^= $40 (maps $E0-$FE to $A0-$BE); goto l9fdE0
	bcc l9fdE0	; (we know carry is clear from the cmp #$FF)
l9sp	lda #$20	; return $20 (space)
	rts
l9pnds	eor #$FF	; return A ^ $FF (maps $5C to $A3)
	rts
l9upar	eor #$5D	; return A ^ $5D (maps $5E to $03)
	rts
l9ltar	eor #$5B	; return A ^ $5B (maps $5F to $04)
	rts
l9fd60	eor #$E0	; return A ^ $E0 (maps $60-$7F to $80-$9F)
	rts
l9macr	eor #$0C	; return A ^ $0C (maps $A3 to $AF)
	rts
l9lwln	eor #$FB	; return A ^ $FB (maps $A4 to $5F)
	rts
l9fdA0	eor #$A0	; return A ^ $A0 (maps $A0-$BF to $00-$1F)
	rts
l9fdC0	eor #$40	; return A ^ $40 (maps $C0-$DF to $80-$9F)
	rts
l9pi	lda #$9E	; return $9E (pi)
l9norm	rts

; Latin-9P to PETSCII uppercase
l92pet	cmp #$00	; if A = $00 return $A9 (upper left triangle)
	beq l9ultr
	cmp #$03	; if A = $03 return A ^ $5D (maps $03 to $5E)
	beq l9upar
	cmp #$04	; if A = $04 return A ^ $5B (maps $04 to $5F)
	beq l9ltar
	cmp #$20	; if A < $20 return A ^ $A0 (maps $00-$1F to $A0-$BF)
	bcc l9fdA0
	cmp #$5F	; if A < $5F return A (no remap); if A = $5F return A ^ $FB (maps $5F to $A4)
	bcc l9norm
	beq l9lwln
	cmp #$60	; if A = $60 return $3F (?)
	beq l9frgn
	cmp #$7B	; if A < $7B return A ^ $20 (maps $61-$7A to $41-$5A)
	bcc l9lcaz
	cmp #$7F	; if A < $7F return $3F (?); if A = $7F return $DE (pi)
	bcc l9frgn
	beq l9ptpi
	cmp #$A0	; if A < $A0 return A ^ $40 (maps $80-$9F to $C0-$DF); if A = $A0 return $DF (upper right triangle)
	bcc l9fdC0
	beq l9urtr
	cmp #$A3	; if A = $A3 return A ^ $FF (maps $A3 to $5C)
	beq l9pnds
	cmp #$AD	; if A = $AD return $BA (lower and right one eighth block)
	beq l9lr18
	cmp #$AF	; if A = $AF return A ^ $0C (maps $AF to $A3)
	beq l9macr
l9frgn	lda #$3F	; return $3F (unmappable character)
	rts
l9ultr	lda #$A9	; return $A9 (upper left triangle)
	rts
l9ptpi	lda #$DE	; return $DE (pi)
	rts
l9urtr	lda #$DF	; return $DF (upper right triangle)
	rts
l9lr18	lda #$BA	; return $BA (lower and right one eighth block)
	rts

; PETSCII uppercase to PETSCII lowercase under Latin-9P
l9pu2l	cmp #$09	; if A = $09 return A ^ $09 (maps $09 to $00)
	beq l9andg
	cmp #$1A	; if A = $1A return A ^ $B7 (maps $1A to $AD)
	beq l9ckmk
	cmp #$41	; if A < $41 return A (no case conversion)
	bcc l9nocc
	cmp #$5B	; if A < $5B return A ^ $20 (maps $41-$5A to $61-$7A)
	bcc l9lcaz
	cmp #$81	; if A < $81 return A (no case conversion)
	bcc l9nocc
	cmp #$9B	; if A < $9B return A ^ $C0 (maps $81-$9A to $41-$5A)
	bcc l9ucaz
	cmp #$9E	; if A = $9E return A ^ $E1 (maps $9E to $7F)
	beq l9ckbd
	cmp #$9F	; if A <> $9F return A (no case conversion)
	bne l9nocc
l9diag	eor #$3F	; return A ^ $3F (maps $9F to $A0)
	rts
l9andg	eor #$09	; return A ^ $09 (maps $09 to $00)
	rts
l9ckmk	eor #$B7	; return A ^ $B7 (maps $1A to $AD)
	rts
l9lcaz	eor #$20	; return A ^ $20 (maps $41-$5A to $61-$7A)
	rts
l9ucaz	eor #$C0	; return A ^ $C0 (maps $81-$9A to $41-$5A)
	rts
l9ckbd	eor #$E1	; return A ^ $E1 (maps $9E to $7F)
l9nocc	rts

; PETSCII lowercase to PETSCII uppercase under Latin-9P
l9pl2u	cmp #$00	; if A = $00 return A ^ $09 (maps $00 to $09)
	beq l9andg
	cmp #$41	; if A < $41 return A (no case conversion)
	bcc l9nocc
	cmp #$5B	; if A < $5B return A ^ $C0 (maps $41-$5A to $81-$9A)
	bcc l9ucaz
	cmp #$61	; if A < $61 return A (no case conversion)
	bcc l9nocc
	cmp #$7B	; if A < $7B return A ^ $20 (maps $61-$7A to $41-$5A)
	bcc l9lcaz
	cmp #$7F	; if A = $7F return A ^ $E1 (maps $7F to $9E)
	beq l9ckbd
	cmp #$A0	; if A = $A0 return A ^ $3F (maps $A0 to $9F)
	beq l9diag
	cmp #$AD	; if A = $AD return A ^ $B7 (maps $AD to $1A)
	beq l9ckmk
	rts
