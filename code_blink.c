#include <stdint.h>

#define PORTB_DDR (char*)0x24
#define PORTB_VAL (char*)0x25

uint8_t ctr = 0;

int main(){
	*PORTB_DDR = 0x20;
	*PORTB_VAL = 0x20;
	while(1){
		ctr++;
		if(ctr == 0)
			*PORTB_VAL ^= 0x20;
	}
}
