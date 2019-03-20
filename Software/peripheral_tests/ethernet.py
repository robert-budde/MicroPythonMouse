import network

lan = network.LAN()
lan.config(trace=7)
lan.active(1)

RCC_BASE = 0x58024400;
RCC_AHB1RSTR = 0x080;
RCC_AHB1ENR = 0x0D8;
RCC_APB4ENR = 0x0F4;
RCC_AHB1LPENR = 0x100;

ETH_BASE = 0x40028000;
ETH_MACCR = 0x0000;
ETH_DMAMR = 0x1000;

@micropython.asm_thumb
def reg_read(r0):
    ldr(r0, [r0, 0])

@micropython.asm_thumb
def reg_write(r0, r1):
    str(r1, [r0, 0])

@micropython.asm_thumb
def reg_bit_set(r0, r1):
    ldr(r2, [r0, 0])
    orr(r2, r1)
    str(r2, [r0, 0])

@micropython.asm_thumb
def reg_bit_clear(r0, r1):
    ldr(r2, [r0, 0])
    bic(r2, r1)
    str(r2, [r0, 0])

# ETH1MACEN (2^15)
print("{:08X}".format(reg_read(RCC_BASE + RCC_AHB1ENR)))

# ETH1MACRST (2^15)
print("{:08X}".format(reg_read(RCC_BASE + RCC_AHB1RSTR)))


# __HAL_RCC_ETH1MAC_CLK_ENABLE
reg_bit_set(RCC_BASE + RCC_AHB1ENR, 0x00038000);
# __HAL_RCC_ETH1MAC_FORCE_RESET
reg_bit_set(RCC_BASE + RCC_AHB1RSTR, 0x00008000);

# __HAL_RCC_SYSCFG_CLK_ENABLE
reg_bit_set(RCC_BASE + RCC_APB4ENR, 0x00000002);



# __HAL_RCC_ETH1MAC_RELEASE_RESET
reg_bit_clear(RCC_BASE + RCC_AHB1RSTR, 0x00008000);

# ETH1RXLPEN (17), ETH1TXLPEN (16), ETH1MACLPEN (15)
print("{:08X}".format(reg_read(RCC_BASE + RCC_AHB1LPENR)));

# 
print("{:08X}".format(reg_read(ETH_BASE + ETH_DMAMR)));

print("{:08X}".format(reg_read(ETH_BASE + ETH_MACCR)));
