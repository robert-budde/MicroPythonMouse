from pyb import Pin, Timer

#p_out = Pin('A0', Pin.OUT_PP)
#p_out.high()
#p_out.low()

pin_phase = Pin('D37', Pin.OUT_PP);
pin_phase.low();

pin_stby = Pin('D36', Pin.OUT_PP);
pin_stby.low(); # low = low power mode

pin_en_fault = Pin('D35', mode=Pin.OUT_OD, pull=Pin.PULL_UP);
pin_en_fault.value(); # low = off / fault

pin_pwm = Pin('D32'); # D32 (PA0) has TIM2, CH1
tim2 = Timer(2, freq=10000);
pwm = tim2.channel(1, Timer.PWM, pin=pin_pwm);
pwm.pulse_width_percent(0);

pin_ref = Pin('D33'); # D33 (PB0) has TIM3, CH3
tim3 = Timer(3, freq=10000);
ref = tim3.channel(3, Timer.PWM, pin=pin_ref);
ref.pulse_width_percent(100); # no pwm current control yet

pin_stby.high();
pin_en_fault.value(True);

pwm.pulse_width_percent(20);