; Conversion routines for PETSCII-8 encoding.

; PETSCII uppercase to PETSCII-8
pet2p8	cmp #$5C	; if A = $5C return $E3 (pound sign)
	beq p8pnds
	cmp #$5E	; if A < $5E return A (no remap)
	bcc p8norm
	cmp #$60	; if A < $60 return A ^ $B3 (arrows)
	bcc p8arrw
	cmp #$80	; if A < $80 return A ^ $A0 (fold up)
	bcc p8fdup
	cmp #$E0	; if A < $E0 return A (no remap)
	bcc p8norm
	cmp #$FF	; if A < $FF return A ^ $40 (fold down)
	bcc p8fddn
p8pi	lda #$DE	; return $DE (pi)
	rts
p8pnds	lda #$E3	; return $E3 (pound sign)
	rts
p8fdup	eor #$A0	; return A ^ $A0 (fold from 60 range up to C0 range)
	rts
p8fddn	eor #$40	; return A ^ $40 (fold from E0 range down to A0 range)
	rts
p8arrw	eor #$B3	; return A ^ $B3 (maps 5E to ED and 5F to EC)
p8norm	rts

; PETSCII uppercase to PETSCII lowercase under PETSCII-8
p8u2l	cmp #$41	; if A < $41 return A (no case conversion)
	bcc p8nocc
	cmp #$5B	; if A < $5B return A ^ $20 (lowercase letters)
	bcc p8lcaz
	cmp #$A9	; if A = $A9 return A | $E0 (lowercase graphics)
	beq p8lcgr
	cmp #$BA	; if A = $BA return A | $E0 (lowercase graphics)
	beq p8lcgr
	cmp #$C1	; if A < $C1 return A (no case conversion)
	bcc p8nocc
	cmp #$DB	; if A < $DB return A ^ $80 (uppercase letters)
	bcc p8ucaz
	cmp #$DE	; if A < $DE return A (no case conversion)
	bcc p8nocc
p8lcgr	ora #$E0	; return A | $E0 (lowercase graphics)
	rts
p8lcaz	eor #$20	; return A ^ $20 (lowercase letters)
	rts
p8ucaz	eor #$80	; return A ^ $80 (uppercase letters)
p8nocc	rts

; PETSCII lowercase to PETSCII uppercase under PETSCII-8
p8l2u	cmp #$41	; if A < $41 return A (no case conversion)
	bcc p8nocc
	cmp #$5B	; if A < $5B return A ^ $80 (undo uppercase letters)
	bcc p8ucaz
	cmp #$61	; if A < $61 return A (no case conversion)
	bcc p8nocc
	cmp #$7B	; if A < $7B return A ^ $20 (undo lowercase letters)
	bcc p8lcaz
	cmp #$E8	; if A = $E8 return $DE (pi)
	beq p8pi
	cmp #$E9	; if A = $E9 return A ^ $40 (maps E9 to A9)
	beq p8fddn
	cmp #$FA	; if A = $FA return A ^ $40 (maps FA to BA)
	beq p8fddn
	cmp #$FE	; if A >= $FE return A ^ $20 (maps FE, FF to DE, DF)
	bcs p8lcaz
	rts

; PETSCII-8 to PETSCII
p82pet	cmp #$60	; if A < $60 return A (no remap); if A = $60 return $3F (?)
	bcc p8norm
	beq p8frgn
	cmp #$7B	; if A < $7B return A ^ $20 (undo lowercase letters)
	bcc p8lcaz
	cmp #$80	; if A < $80 return $3F (?)
	bcc p8frgn
	cmp #$E0	; if A < $E0 return A (no remap); if A = $E0 return A ^ $20 (maps E0 to C0)
	bcc p8norm
	beq p8lcaz
	cmp #$E3	; if A = $E3 return $5C (pound sign)
	beq p8pndp
	cmp #$E6	; if A = $E6 return $D1 (black circle)
	beq p8blcr
	cmp #$E8	; if A = $E8 return $DE (pi)
	beq p8pi
	cmp #$E9	; if A = $E9 return A ^ $40 (maps E9 to A9)
	beq p8fddn
	cmp #$EA	; if A = $EA return $D7 (white circle)
	beq p8whcr
	cmp #$EC	; if A < $EC return $3F (?)
	bcc p8frgn
	cmp #$EE	; if A < $EE return A ^ $B3 (maps ED to 5E and EC to 5F)
	bcc p8arrw
	cmp #$FA	; if A = $FA return A ^ $40 (maps FA to BA)
	beq p8fddn
	cmp #$FD	; if A >= $FD return A ^ $20 (maps FD, FE, FF to DD, DE, DF)
	bcs p8lcaz
p8frgn	lda #$3F	; return $3F (unmappable character)
	rts
p8pndp	lda #$5C	; return $5C (pound sign in PETSCII)
	rts
p8blcr	lda #$D1	; return $D1 (black circle)
	rts
p8whcr	lda #$D7	; return $D7 (white circle)
	rts
