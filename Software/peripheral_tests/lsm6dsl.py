from pyb import I2C
import struct

# works for X-NUCLEO-IKS01A2 on STM32F7DISC & NUCLEO-H743ZI

LSM6_ADDR = 0x6B # on X-NUCLEO-IKS01A2

class LSM6:
    FUNC_CFG_ACCESS = 0X01
    SENSOR_SYNC_TIME = 0X04
    SENSOR_RES_RATIO = 0X05

    FIFO_CTRL1 = 0X06
    FIFO_CTRL2 = 0X07
    FIFO_CTRL3 = 0X08
    FIFO_CTRL4 = 0X09
    FIFO_CTRL5 = 0X0A

    DRDY_PULSE_CFG_G = 0X0B
    INT1_CTRL = 0X0D
    INT2_CTRL = 0X0E
    WHO_AM_I_REG = 0X0F
    CTRL1_XL = 0X10
    CTRL2_G = 0X11
    CTRL3_C = 0X12
    CTRL4_C = 0X13
    CTRL5_C = 0X14
    CTRL6_G = 0X15
    CTRL7_G = 0X16
    CTRL8_XL = 0X17
    CTRL9_XL = 0X18
    CTRL10_C = 0X19

    MASTER_CONFIG = 0X1A
    WAKE_UP_SRC = 0X1B
    TAP_SRC = 0X1C
    D6D_SRC = 0X1D
    STATUS_REG = 0X1E

    OUT_TEMP_L = 0X20
    OUT_TEMP_H = 0X21
    OUTX_L_G = 0X22
    OUTX_H_G = 0X23
    OUTY_L_G = 0X24
    OUTY_H_G = 0X25
    OUTZ_L_G = 0X26
    OUTZ_H_G = 0X27
    OUTX_L_XL = 0X28
    OUTX_H_XL = 0X29
    OUTY_L_XL = 0X2A
    OUTY_H_XL = 0X2B
    OUTZ_L_XL = 0X2C
    OUTZ_H_XL = 0X2D

i2c = I2C(1);						 # create on bus 1
i2c.init(I2C.MASTER, baudrate=100000); # init as a master, 100kHz

scan = i2c.scan();					  # scan for slaves on the bus
print("Found I2C devices: " + ", ".join("0x{:02X}".format(b) for b in scan));

who_am_i = i2c.mem_read(1, LSM6_ADDR, LSM6.WHO_AM_I_REG)[0];
print("WHO_AM_I = 0x{:02X}".format(who_am_i));

# Acc = 416Hz (High-Performance mode)
i2c.mem_write(0x60, LSM6_ADDR, LSM6.CTRL1_XL);
# Acc Data Ready interrupt on INT1
i2c.mem_write(i2c.mem_read(1, LSM6_ADDR, LSM6.INT1_CTRL)[0] | 0x01, LSM6_ADDR, LSM6.INT1_CTRL);

# Gyro = 416Hz (High-Performance mode)
i2c.mem_write(0x60, LSM6_ADDR, LSM6.CTRL2_G);
# Gyro Data Ready interrupt on INT1
i2c.mem_write(i2c.mem_read(1, LSM6_ADDR, LSM6.INT1_CTRL)[0] | 0x02, LSM6_ADDR, LSM6.INT1_CTRL);

# INT1 is on X-NUCLEO-IKS01A2 on CN9, pin 5.
# equals CN4, pin 5 on Disco -> "Arduino D4"/"PG7"

g = pyb.Pin(pyb.Pin.board.D4, pyb.Pin.IN)
# http://docs.micropython.org/en/v1.9.3/pyboard/library/pyb.ExtInt.html

while True:
    status = i2c.mem_read(1, LSM6_ADDR, LSM6.STATUS_REG)[0];
    if (status & 0x01): # XLDA
        values = [value / (1<<14) for value in struct.unpack('hhh', i2c.mem_read(6, LSM6_ADDR, LSM6.OUTX_L_XL))];
        print("ACC X={:5.2f}, Y={:5.2f}, Z={:5.2f}".format(values[0], values[1], values[2]));
    if (status & 0x02): # GDA
        values = [value / (1<<14) for value in struct.unpack('hhh', i2c.mem_read(6, LSM6_ADDR, LSM6.OUTX_L_G))];
        print("GYRO X={:5.2f}, Y={:5.2f}, Z={:5.2f}".format(values[0], values[1], values[2]));