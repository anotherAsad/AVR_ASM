.org	0x00

ldi		r20, 0x20		; bit 5 HI
ldi		r21, 0x00
sts		0x24, r20			; set DDR-PORTB pin5.
sts		0x25, r20			; set VAL-PORTB pin5.

ldi		r18, 0x0
ldi		r19, 0x1

init:
ldi		r17, 0xFF
ldi		r16, 0xFF
; Average clever. Uses the DEC's change of Zero flag and 0xFF auto-loop-back.
loop:
nop
nop
dec		r17
brne 	loop
dec		r16
brne 	loop

sts		0x25, r21		; clear PORTB pin5.
eor		r18, r19
breq 	init
sts		0x25, r20		; set PORTB pin5.

rjmp 	init
