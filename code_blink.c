#define PORTB_DDR (char*)0x04
#define PORTB_VAL (char*)0x05

int main(){
	*PORTB_DDR = 0x10;
	while(1){
		*PORTB_VAL = 0x10;
	}
}
