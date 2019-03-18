EESchema Schematic File Version 4
LIBS:micromouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ssd1306:ssd1306-oled-64x128 OLED
U 1 1 5C903882
P 8300 5050
F 0 "OLED" H 8300 5465 50  0000 C CNN
F 1 "ssd1306-oled-64x128" H 8300 5374 50  0000 C CNN
F 2 "" H 8300 5050 50  0001 C CNN
F 3 "" H 8300 5050 50  0001 C CNN
	1    8300 5050
	1    0    0    -1  
$EndComp
Text GLabel 7500 4900 0    50   Input ~ 0
VDD
Text GLabel 7500 5000 0    50   Input ~ 0
GND
Text GLabel 9000 4900 2    50   Input ~ 0
OLED_SCL
Text GLabel 9000 5000 2    50   Input ~ 0
OLED_SDA
Wire Wire Line
	8600 4900 9000 4900
Wire Wire Line
	9000 5000 8600 5000
Wire Wire Line
	8000 5000 7500 5000
Wire Wire Line
	8000 4900 7500 4900
$EndSCHEMATC
