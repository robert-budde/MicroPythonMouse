EESchema Schematic File Version 4
LIBS:micromouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L Power_Protection:ESDA6V1BC6 D?
U 1 1 5C92A708
P 5600 4350
F 0 "D?" H 5930 4396 50  0000 L CNN
F 1 "ESDA6V1BC6" H 5930 4305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5600 4000 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/21/07/21/e3/a8/df/42/a2/CD00001906.pdf/files/CD00001906.pdf/jcr:content/translations/en.CD00001906.pdf" V 5600 4350 50  0001 C CNN
	1    5600 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C92A70F
P 5600 4700
F 0 "#PWR?" H 5600 4450 50  0001 C CNN
F 1 "GND" H 5605 4527 50  0000 C CNN
F 2 "" H 5600 4700 50  0001 C CNN
F 3 "" H 5600 4700 50  0001 C CNN
	1    5600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4700 5600 4650
$Comp
L Connector:USB_OTG J?
U 1 1 5C92A716
P 6200 3450
F 0 "J?" H 5970 3441 50  0000 R CNN
F 1 "USB_OTG" H 5970 3350 50  0000 R CNN
F 2 "" H 6350 3400 50  0001 C CNN
F 3 " ~" H 6350 3400 50  0001 C CNN
	1    6200 3450
	-1   0    0    -1  
$EndComp
Text GLabel 5050 3250 0    50   Output ~ 0
USB_VBUS
Text GLabel 5050 3650 0    50   Output ~ 0
USB_ID
Text GLabel 5050 3550 0    50   BiDi ~ 0
USB_DM
Text GLabel 5050 3450 0    50   BiDi ~ 0
USB_DP
Wire Wire Line
	5050 3250 5800 3250
Wire Wire Line
	5900 3650 5400 3650
Wire Wire Line
	5400 4050 5400 3650
Connection ~ 5400 3650
Wire Wire Line
	5400 3650 5050 3650
Wire Wire Line
	5800 4050 5800 3250
Connection ~ 5800 3250
Wire Wire Line
	5800 3250 5900 3250
Wire Wire Line
	5700 3450 5050 3450
Wire Wire Line
	5900 3450 5700 3450
Connection ~ 5700 3450
Wire Wire Line
	5700 4050 5700 3450
Wire Wire Line
	5500 3550 5900 3550
Wire Wire Line
	5050 3550 5500 3550
Connection ~ 5500 3550
Wire Wire Line
	5500 3550 5500 4050
$Comp
L power:GND #PWR?
U 1 1 5C92A731
P 6250 3950
F 0 "#PWR?" H 6250 3700 50  0001 C CNN
F 1 "GND" H 6255 3777 50  0000 C CNN
F 2 "" H 6250 3950 50  0001 C CNN
F 3 "" H 6250 3950 50  0001 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3850 6200 3900
Wire Wire Line
	6200 3900 6250 3900
Wire Wire Line
	6250 3900 6250 3950
Wire Wire Line
	6250 3900 6300 3900
Wire Wire Line
	6300 3900 6300 3850
Connection ~ 6250 3900
$EndSCHEMATC
