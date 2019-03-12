EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
L Sensor_Motion:LSM9DS1 U?
U 1 1 5CB0945C
P 6150 3850
AR Path="/5CB0945C" Ref="U?"  Part="1" 
AR Path="/5CAF83BA/5CB0945C" Ref="U?"  Part="1" 
F 0 "U?" H 5650 3050 50  0000 C CNN
F 1 "LSM9DS1" H 5750 2950 50  0000 C CNN
F 2 "Package_LGA:LGA-24L_3x3.5mm_P0.43mm" H 7650 4600 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/1e/3f/2a/d6/25/eb/48/46/DM00103319.pdf/files/DM00103319.pdf/jcr:content/translations/en.DM00103319.pdf" H 6150 3950 50  0001 C CNN
	1    6150 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5CB09463
P 6150 2300
AR Path="/5CB09463" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB09463" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 2150 50  0001 C CNN
F 1 "VDD" H 6167 2473 50  0000 C CNN
F 2 "" H 6150 2300 50  0001 C CNN
F 3 "" H 6150 2300 50  0001 C CNN
	1    6150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5CB09469
P 6550 2300
AR Path="/5CB09469" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB09469" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 2150 50  0001 C CNN
F 1 "VDD" H 6567 2473 50  0000 C CNN
F 2 "" H 6550 2300 50  0001 C CNN
F 3 "" H 6550 2300 50  0001 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB0946F
P 6150 4900
AR Path="/5CB0946F" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB0946F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 4650 50  0001 C CNN
F 1 "GND" H 6155 4727 50  0000 C CNN
F 2 "" H 6150 4900 50  0001 C CNN
F 3 "" H 6150 4900 50  0001 C CNN
	1    6150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4900 6150 4750
Wire Wire Line
	6150 4750 6250 4750
Wire Wire Line
	6250 4750 6250 4650
Wire Wire Line
	6050 4650 6050 4750
Wire Wire Line
	6050 4750 6150 4750
Connection ~ 6150 4750
NoConn ~ 6850 4350
NoConn ~ 6850 4250
NoConn ~ 6850 4150
NoConn ~ 6850 4050
NoConn ~ 6850 3950
$Comp
L Device:C_Small C?
U 1 1 5CB09480
P 5800 3000
AR Path="/5CB09480" Ref="C?"  Part="1" 
AR Path="/5CAF83BA/5CB09480" Ref="C?"  Part="1" 
F 0 "C?" V 5850 2850 50  0000 C CNN
F 1 "100nF" V 5850 3200 50  0000 C CNN
F 2 "" H 5800 3000 50  0001 C CNN
F 3 "~" H 5800 3000 50  0001 C CNN
	1    5800 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CB09487
P 5800 2700
AR Path="/5CB09487" Ref="C?"  Part="1" 
AR Path="/5CAF83BA/5CB09487" Ref="C?"  Part="1" 
F 0 "C?" V 5850 2550 50  0000 C CNN
F 1 "100nF" V 5850 2900 50  0000 C CNN
F 2 "" H 5800 2700 50  0001 C CNN
F 3 "~" H 5800 2700 50  0001 C CNN
	1    5800 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB0948E
P 5600 2700
AR Path="/5CB0948E" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB0948E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 2450 50  0001 C CNN
F 1 "GND" H 5605 2527 50  0000 C CNN
F 2 "" H 5600 2700 50  0001 C CNN
F 3 "" H 5600 2700 50  0001 C CNN
	1    5600 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB09494
P 5600 3000
AR Path="/5CB09494" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB09494" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5600 2750 50  0001 C CNN
F 1 "GND" H 5605 2827 50  0000 C CNN
F 2 "" H 5600 3000 50  0001 C CNN
F 3 "" H 5600 3000 50  0001 C CNN
	1    5600 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3000 5700 3000
Wire Wire Line
	5600 2700 5700 2700
Wire Wire Line
	5900 2700 6250 2700
Wire Wire Line
	6250 2700 6250 3050
Wire Wire Line
	6150 3000 6150 3050
Wire Wire Line
	5900 3000 6150 3000
Wire Wire Line
	6150 3000 6150 2350
Connection ~ 6150 3000
Wire Wire Line
	6250 2700 6250 2350
Wire Wire Line
	6250 2350 6150 2350
Connection ~ 6250 2700
Connection ~ 6150 2350
Wire Wire Line
	6150 2350 6150 2300
$Comp
L Device:C_Small C?
U 1 1 5CB094A7
P 6950 2700
AR Path="/5CB094A7" Ref="C?"  Part="1" 
AR Path="/5CAF83BA/5CB094A7" Ref="C?"  Part="1" 
F 0 "C?" V 7000 2550 50  0000 C CNN
F 1 "100nF" V 7000 2900 50  0000 C CNN
F 2 "" H 6950 2700 50  0001 C CNN
F 3 "~" H 6950 2700 50  0001 C CNN
	1    6950 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CB094AE
P 6950 2550
AR Path="/5CB094AE" Ref="C?"  Part="1" 
AR Path="/5CAF83BA/5CB094AE" Ref="C?"  Part="1" 
F 0 "C?" V 7000 2400 50  0000 C CNN
F 1 "10uF X5R" V 7000 2800 50  0000 C CNN
F 2 "" H 6950 2550 50  0001 C CNN
F 3 "~" H 6950 2550 50  0001 C CNN
	1    6950 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CB094B5
P 6950 2850
AR Path="/5CB094B5" Ref="C?"  Part="1" 
AR Path="/5CAF83BA/5CB094B5" Ref="C?"  Part="1" 
F 0 "C?" V 7000 2700 50  0000 C CNN
F 1 "10uF X5R" V 7000 3100 50  0000 C CNN
F 2 "" H 6950 2850 50  0001 C CNN
F 3 "~" H 6950 2850 50  0001 C CNN
	1    6950 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CB094BC
P 6950 3000
AR Path="/5CB094BC" Ref="C?"  Part="1" 
AR Path="/5CAF83BA/5CB094BC" Ref="C?"  Part="1" 
F 0 "C?" V 7000 2850 50  0000 C CNN
F 1 "100nF" V 7000 3200 50  0000 C CNN
F 2 "" H 6950 3000 50  0001 C CNN
F 3 "~" H 6950 3000 50  0001 C CNN
	1    6950 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 2700 6700 2700
Wire Wire Line
	6450 2350 6550 2350
Connection ~ 6550 2350
Wire Wire Line
	6550 2350 6550 2300
Wire Wire Line
	6550 2350 6550 2700
Wire Wire Line
	6700 2700 6700 2550
Wire Wire Line
	6700 2550 6850 2550
Connection ~ 6700 2700
Wire Wire Line
	6700 2700 6850 2700
Wire Wire Line
	6700 3000 6700 2850
Wire Wire Line
	6700 2850 6850 2850
Connection ~ 6700 3000
Wire Wire Line
	6700 3000 6850 3000
Wire Wire Line
	7050 2850 7200 2850
Wire Wire Line
	7200 2850 7200 3000
Wire Wire Line
	7200 3000 7050 3000
Wire Wire Line
	7050 2700 7200 2700
Wire Wire Line
	7200 2700 7200 2550
Wire Wire Line
	7200 2550 7050 2550
$Comp
L power:GND #PWR?
U 1 1 5CB094D6
P 7300 2700
AR Path="/5CB094D6" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB094D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7300 2450 50  0001 C CNN
F 1 "GND" H 7305 2527 50  0000 C CNN
F 2 "" H 7300 2700 50  0001 C CNN
F 3 "" H 7300 2700 50  0001 C CNN
	1    7300 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB094DC
P 7300 3000
AR Path="/5CB094DC" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB094DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7300 2750 50  0001 C CNN
F 1 "GND" H 7305 2827 50  0000 C CNN
F 2 "" H 7300 3000 50  0001 C CNN
F 3 "" H 7300 3000 50  0001 C CNN
	1    7300 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 2700 7200 2700
Connection ~ 7200 2700
Wire Wire Line
	7300 3000 7200 3000
Connection ~ 7200 3000
Connection ~ 6550 2700
Wire Wire Line
	6550 2700 6550 3050
Wire Wire Line
	6450 2350 6450 3000
Wire Wire Line
	6450 3000 6700 3000
Connection ~ 6450 3000
Wire Wire Line
	6450 3000 6450 3050
Text GLabel 5150 3550 0    50   Input ~ 0
IMU_MOSI
Text GLabel 5150 3450 0    50   Input ~ 0
IMU_SCLK
NoConn ~ 6850 3750
NoConn ~ 6850 3650
NoConn ~ 6850 3550
NoConn ~ 6850 3450
Text GLabel 5150 3850 0    50   Input ~ 0
IMU_MISO
Wire Wire Line
	5150 3850 5450 3850
Wire Wire Line
	5450 3550 5150 3550
Wire Wire Line
	5150 3450 5450 3450
$Comp
L Device:C_Small C?
U 1 1 5CB094F6
P 5250 4700
AR Path="/5CB094F6" Ref="C?"  Part="1" 
AR Path="/5CAF83BA/5CB094F6" Ref="C?"  Part="1" 
F 0 "C?" H 5342 4746 50  0000 L CNN
F 1 "100nF X7R" H 5342 4655 50  0000 L CNN
F 2 "" H 5250 4700 50  0001 C CNN
F 3 "~" H 5250 4700 50  0001 C CNN
	1    5250 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CB094FD
P 4900 4700
AR Path="/5CB094FD" Ref="C?"  Part="1" 
AR Path="/5CAF83BA/5CB094FD" Ref="C?"  Part="1" 
F 0 "C?" H 4992 4746 50  0000 L CNN
F 1 "10nF 16V" H 4992 4655 50  0000 L CNN
F 2 "" H 4900 4700 50  0001 C CNN
F 3 "~" H 4900 4700 50  0001 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB09504
P 5250 4900
AR Path="/5CB09504" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB09504" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 4650 50  0001 C CNN
F 1 "GND" H 5255 4727 50  0000 C CNN
F 2 "" H 5250 4900 50  0001 C CNN
F 3 "" H 5250 4900 50  0001 C CNN
	1    5250 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB0950A
P 4900 4900
AR Path="/5CB0950A" Ref="#PWR?"  Part="1" 
AR Path="/5CAF83BA/5CB0950A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 4650 50  0001 C CNN
F 1 "GND" H 4905 4727 50  0000 C CNN
F 2 "" H 4900 4900 50  0001 C CNN
F 3 "" H 4900 4900 50  0001 C CNN
	1    4900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4900 4900 4800
Wire Wire Line
	5250 4900 5250 4800
Wire Wire Line
	5250 4600 5250 4450
Wire Wire Line
	5250 4450 5450 4450
Wire Wire Line
	5450 4350 4900 4350
Wire Wire Line
	4900 4350 4900 4600
Text GLabel 5150 3750 0    50   Input ~ 0
IMU_CS
Wire Wire Line
	5150 3750 5450 3750
NoConn ~ 5450 4150
Text GLabel 5150 3950 0    50   Input ~ 0
IMU_INT
Wire Wire Line
	5150 3950 5450 3950
NoConn ~ 5450 4050
$EndSCHEMATC