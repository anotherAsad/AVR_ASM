.org 0x0
sbi		0x04, 5			; set DDR-PORTB pin5.
sbi		0x05, 5			; set PORT-B pin5.
loop:
jmp 	loop
