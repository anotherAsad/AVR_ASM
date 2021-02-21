.org	0x00
jmp		0x40

.org	0x40
main:
cli
sbi		0x04, 5			; set DDR-PORTB pin5.
sbi		0x05, 5			; set PORTB pin5.

ldi		r18, 0x0
ldi		r19, 0x1

init:
ldi		r17, 0xFF
ldi		r16, 0xFF
; Very clever. Uses the DEC's change of Zero flag and 0xFF auto-loop-back.
loop:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
dec		r17
brne 	0x4E	; loop
dec		r16
brne 	0x4E	; loop

cbi		0x05, 5
eor		r18, r19
breq 	0x4A	; init
sbi		0x05, 5

jmp 	0x4A	; init
