avr-as -mmcu=atmega328p code.S -o code.o
avr-objcopy -O ihex -R .eeprom code.o code.hex
avr-objdump -D code.o
avr-objdump -mavr -D code.hex
avrdude -F -V -c arduino -p ATMEGA328P -P com3 -b 115200 -U flash:w:code.hex
