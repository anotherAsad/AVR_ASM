.org	0x00
rjmp	main
.org	0x40
main:
cli
sbi		0x04, 5			; set DDR-PORTB pin5.
sbi		0x05, 5			; set PORTB pin5.
sbi		0x05, 5
cbi		0x05, 5
stuck: jmp stuck
rjmp	stuck
ldi		r18, 0

init:
ldi		r20, 0xFF
ldi		r19, 0xFF
ldi		r17, 0xFF
ldi		r16, 0xFF
; Very clever. Uses the DEC's change of Z flag and loop-back.
loop:
cbi		0x05, 5
dec		r17
brne 	loop
dec		r16
brne 	loop
dec		r20
brne 	loop
dec		r19
brne 	loop
;cbi		0x05, 5

eor		r18, 0x1
cbi		0x05, 5
breq 	init
sbi		0x05, 5

rjmp 	init
