#ifndef GPIO_H
#define GPIO_H
#include <QObject>
//Base class of all object
#include "wiringPi.h"
//download driver pi in the workshop foalder
#include "softPwm.h"
//is a handeler in the wiringpi for the pwm signal

#define gpio_input 0
#define gpio_output 1
#define gpio_pwm 2

class GPIO : public QObject
{
    Q_OBJECT
public:
    void gpio(int pin , int type );
    void pinhight();
    void pinlow();
    void set_pwmvalue(int value); // to set value of the pwm
    void set_seatdirection(int h , int anth); // to set the direction up and down of the seat
protected:
    int heat_pin ;
    int ventilo_pin;
    int pwm_value;
    int int1 ; // (en=1 and in1 =1 rotation sens horraire )
    int int2 ; // (en=1 and in2 =1 rotation sens antihorraire )
    int en ; // (en=0 motor seat disactivate )

};

#endif // GPIO_H
