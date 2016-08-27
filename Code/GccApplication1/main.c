/*
 * speed.c
 *
 * Created: 2016-05-09 12:14:49 AM
 * Author : Mike
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <math.h>

void setDisplay(int displayNum, int number);
unsigned int count(unsigned int i);
void processThreeDigitNumber(int number);
void setupADC();
double Thermistor(int RawADC);


int main(void)
{
	DDRB = 0xFF; //PORTB as Output for 7-segment LEDs
	DDRD = 0x03; //PORTD as Output for control
	setupADC();			//prepare ADC for continous conversions and enable interrupts on completion
	while(1){} //infinite loop
}


//setup continuous sampling with interrupts on completion on A0
void setupADC()
{
	cli();//disable interrupts

	//set up continuous sampling of analog pin 0

	//clear ADCSRA and ADCSRB registers
	ADCSRA = 0;
	ADCSRB = 0;

	ADMUX |= (1 << REFS0);									 //set reference voltage
	ADMUX |= (1 << ADLAR);									 //left align the ADC value- so we can read highest 8 bits from ADCH register only
	ADCSRA |= (1 << ADPS2) | (1 << ADPS0) | (1 << ADPS1);	 //set ADC clock with 128 prescaler- 16mHz/32=500kHz
	ADCSRA |= (1 << ADATE);									 //enable auto trigger
	ADCSRA |= (1 << ADIE);									 //enable interrupts when measurement complete
	ADCSRA |= (1 << ADEN);									 //enable ADC
	ADCSRA |= (1 << ADSC);									 //start ADC measurements

	sei();//enable interrupts
}

double Thermistor(int RawADC) 
{
	double Temp;
	Temp = log(10000.0*((256.0/RawADC-1)));
	Temp = 1 / (0.001129148 + (0.000234125 + (0.0000000876741 * Temp * Temp ))* Temp );
	Temp = Temp - 273.15;
	if(Temp <0)
		return 99;
	return Temp;
}

//count the number of digits in a number
unsigned int count(unsigned int i) 
{
	unsigned int ret=1;
	while (i/=10) ret++;
	return ret;
}

//takes in a three digit number and develops the data to be sent to the displays
void processThreeDigitNumber(int number)
{
	//break the three digit number into its three digits and place them in an array
	unsigned int dig=count(number);
	unsigned int compare = dig;
	char arr[dig];
	while (dig--) 
	{
		arr[dig]=number%10;
		number/=10;
	}
	
	
	if(compare == 2)
	{
		//set the displays for a desired period of time
		for(int i = 0; i < 100; i++)
		{
			setDisplay(2,arr[0]);
			_delay_us(500);
			setDisplay(1,arr[1]);
			_delay_us(500);
		}
	}
	
	else if(compare == 1)
	{
		//set the displays for a desired period of time
		for(int i = 0; i < 100; i++)
		{
			setDisplay(2,0);
			_delay_us(500);
			setDisplay(1,arr[0]);
			_delay_us(500);
		}
	}
}

//turns on the desired 7seg (either 1,2, or 3) and displays the desired number (0-9)
void setDisplay(int displayNum, int number)
{
	//turn on correct control
	if(displayNum == 1)
		PORTD = 0x01;
	else if (displayNum == 2)
		PORTD = 0x02;

	
	//turn on correct LEDs
	if(number == 0)
		PORTB = 0x82;
	else if(number == 1)
		PORTB = 0xBB;
	else if(number == 2)
		PORTB = 0x05;
	else if(number == 3)
		PORTB = 0x91;
	else if(number == 4)
		PORTB = 0xB8;
	else if(number == 5)
		PORTB = 0xD0;
	else if(number == 6)
		PORTB = 0xC0;
	else if(number == 7)
		PORTB = 0x9B;
	else if(number == 8)
		PORTB = 0x00;
	else if(number == 9)
		PORTB = 0x98;
}

//******************************************************************INTERRUPT SERVICE ROUTINE********************************************************
// Interrupt service routine for the ADC completion
ISR(ADC_vect)
{
	cli();								//disable interrupts
	double temp = Thermistor(ADCH) - 5;
	processThreeDigitNumber(temp);
	sei();					//enable interrupts

}