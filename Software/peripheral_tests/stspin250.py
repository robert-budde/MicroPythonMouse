from pyb import Pin, Timer
from machine import SPI

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
pin_stby.low();
pin_en_fault.value(True);

pwm.pulse_width_percent(10);

# MPS MA702
pin_cs = Pin('D10', Pin.OUT_PP);
pin_cs.high();

pin_mosi = Pin('D11', Pin.AF_PP)
#pin_miso = Pin('D12', Pin.AF)
pin_sck = Pin('D13', Pin.AF_PP)
spi = SPI('A', baudrate=1000000, polarity=1, phase=0, bits=16);

pin_cs.low();
lsb = spi.read(1);
msb = spi.read(1);
print(msb[0]*256+lsb[0])
pin_cs.high();

pin_cs.low();
buf = bytearray(2)
rx = spi.write_readinto(b'00', buf)
print(rx)
pin_cs.high();

pin_cs.low();
buf = bytearray(2)
rx = spi.readinto(buf)
print(rx)
pin_cs.high();

int.from_bytes(rx, byteorder='big', signed=False)
struct.unpack('>H', rx)

machine.reset()