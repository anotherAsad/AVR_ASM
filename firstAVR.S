.org 0x8

; DDRB : Data Direction Register Address
; PORB : Output Port
;ldi		r26, 0x04		; load X_LO with DDRB address
;ldi		r27, 0x00		; load X_HI with data direction register address
;ldi		r16, 0x20		; Set 5th bit
;st		X, r16			; Write DDRB with 5th bit HI

;ldi		r26, 0x05		; load X_LO with DDRB address
;ldi		r27, 0x00		; load X_HI with data direction register address
;ldi		r16, 0x00		; Set 5th bit
;st		X, r16			; Write DDRB with 5th bit HI
sbi		0x04, 5
cbi		0x05, 5
loop:
jmp 	loop
