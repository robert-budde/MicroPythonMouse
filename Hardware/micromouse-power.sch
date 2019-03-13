EESchema Schematic File Version 4
LIBS:micromouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4950 2800 0    50   ~ 0
MPS2639A/C
$Comp
L ldl212:LDL212PUR IC?
U 1 1 5C8B0977
P 5100 3850
F 0 "IC?" H 5100 4215 50  0000 C CNN
F 1 "LDL212PUR" H 5100 4124 50  0000 C CNN
F 2 "" H 4800 3500 50  0001 L CNN
F 3 "http://www.st.com/resource/en/datasheet/ldl212.pdf" H 4800 3400 50  0001 L CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C8B09E6
P 6150 2600
F 0 "#PWR?" H 6150 2450 50  0001 C CNN
F 1 "+5V" H 6165 2773 50  0000 C CNN
F 2 "" H 6150 2600 50  0001 C CNN
F 3 "" H 6150 2600 50  0001 C CNN
	1    6150 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C8B09FB
P 4400 3600
F 0 "#PWR?" H 4400 3450 50  0001 C CNN
F 1 "+5V" H 4415 3773 50  0000 C CNN
F 2 "" H 4400 3600 50  0001 C CNN
F 3 "" H 4400 3600 50  0001 C CNN
	1    4400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3600 4400 3750
Wire Wire Line
	4400 3750 4700 3750
$Comp
L power:GND #PWR?
U 1 1 5C8B0A3D
P 5100 4250
F 0 "#PWR?" H 5100 4000 50  0001 C CNN
F 1 "GND" H 5105 4077 50  0000 C CNN
F 2 "" H 5100 4250 50  0001 C CNN
F 3 "" H 5100 4250 50  0001 C CNN
	1    5100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4150 5050 4200
Wire Wire Line
	5050 4200 5100 4200
Wire Wire Line
	5100 4200 5100 4250
Wire Wire Line
	5150 4150 5150 4200
Wire Wire Line
	5150 4200 5100 4200
Connection ~ 5100 4200
Text Notes 6250 3900 0    50   ~ 0
adj. to +3.3V
Wire Wire Line
	5700 3650 5700 3750
Wire Wire Line
	5700 3750 5500 3750
$Comp
L power:+BATT #PWR?
U 1 1 5C8B0D71
P 4350 2400
F 0 "#PWR?" H 4350 2250 50  0001 C CNN
F 1 "+BATT" H 4365 2573 50  0000 C CNN
F 2 "" H 4350 2400 50  0001 C CNN
F 3 "" H 4350 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 5C8C0EA2
P 6450 2600
F 0 "#PWR?" H 6450 2450 50  0001 C CNN
F 1 "VBUS" H 6465 2773 50  0000 C CNN
F 2 "" H 6450 2600 50  0001 C CNN
F 3 "" H 6450 2600 50  0001 C CNN
	1    6450 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C8C13F1
P 5850 3800
F 0 "R?" H 5909 3846 50  0000 L CNN
F 1 "R_Small" H 5909 3755 50  0000 L CNN
F 2 "" H 5850 3800 50  0001 C CNN
F 3 "~" H 5850 3800 50  0001 C CNN
	1    5850 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C8C143B
P 5850 4100
F 0 "R?" H 5909 4146 50  0000 L CNN
F 1 "R_Small" H 5909 4055 50  0000 L CNN
F 2 "" H 5850 4100 50  0001 C CNN
F 3 "~" H 5850 4100 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3850 5700 3850
Wire Wire Line
	5700 3850 5700 3950
Wire Wire Line
	5700 3950 5850 3950
Wire Wire Line
	5850 3950 5850 4000
Wire Wire Line
	5850 3900 5850 3950
Connection ~ 5850 3950
Wire Wire Line
	5850 4250 5850 4200
$Comp
L power:GND #PWR?
U 1 1 5C8C1686
P 5850 4250
F 0 "#PWR?" H 5850 4000 50  0001 C CNN
F 1 "GND" H 5855 4077 50  0000 C CNN
F 2 "" H 5850 4250 50  0001 C CNN
F 3 "" H 5850 4250 50  0001 C CNN
	1    5850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3650 5850 3650
Wire Wire Line
	5850 3650 5850 3600
Wire Wire Line
	5850 3700 5850 3650
Connection ~ 5850 3650
$Comp
L power:VDD #PWR?
U 1 1 5C8C1D99
P 5850 3600
F 0 "#PWR?" H 5850 3450 50  0001 C CNN
F 1 "VDD" H 5867 3773 50  0000 C CNN
F 2 "" H 5850 3600 50  0001 C CNN
F 3 "" H 5850 3600 50  0001 C CNN
	1    5850 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
