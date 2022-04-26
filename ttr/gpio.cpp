#include "gpio.h"



GPIO:: gpio(int pin , int type )
{
    wiringPiSetup();
    int heat_pin=pin;
    int ventilo_pin=pin;
    int pwm_value=0;
    int in1=0; // (en=1 and in1 =1 rotation sens horraire )
    int int2=0; // (en=1 and in2 =1 rotation sens antihorraire )
    int en=0 ; // (en=0 motor seat disactivate )

    switch(type)
       {
           case gpio_input:
           {
               pinMode(pin, INPUT);
               wiringPiISR(pin, INT_EDGE_BOTH, isrInput);
           } break;

           case gpio_output:
           {
               pinMode(pin, OUTPUT);

           } break;

           case gpio_pwm :
           {
               softPwmCreate(pin, pwm_value, 100);
           } break;
       }
}

void GPIO ::pinhight()
{
     digitalWrite(heat_pin,HIGH);
     digitalWrite(ventilo_pin,HIGH);
     digitalWrite(int1,HIGH);
     digitalWrite(int2,HIGH);
     digitalWrite(en,HIGH);

}
void GPIO ::pinlow()
{
     digitalWrite(heat_pin,LOW);
     digitalWrite(ventilo_pin,LOW);
     digitalWrite(int1,LOW);
     digitalWrite(int2,LOW);
     digitalWrite(en,LOW);

}

void GPIO ::set_pwmvalue(int value)
{
     softPwmWrite(pwm_value, value);

}

void GPIO :: set_seatdirection(int h)
{
   if (h==1) {
       digitalWrite(en,HIGH);
       digitalWrite(int1,HIGH);
   }
   if (h==0) {
       digitalWrite(en,HIGH);
       digitalWrite(int2,HIGH);
   }
}

