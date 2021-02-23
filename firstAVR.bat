avr-as -mmcu=atmega328p code.S -o code.o
avr-ld code.o -o ldcode.o
::avr-gcc -O0 code_blink.c -o ldcode.o
avr-objcopy -O ihex ldcode.o code.hex
avr-objdump -D ldcode.o
avr-objdump -mavr -D code.hex
avrdude -D -F -V -c arduino -p ATMEGA328P -P com3 -b 115200 -U flash:w:code.hex
