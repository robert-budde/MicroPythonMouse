EESchema Schematic File Version 4
LIBS:micromouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
L Connector:Conn_ARM_JTAG_SWD_10 J?
U 1 1 5C9344DA
P 5650 3950
AR Path="/5C9344DA" Ref="J?"  Part="1" 
AR Path="/5C92AF24/5C9344DA" Ref="J?"  Part="1" 
F 0 "J?" H 5209 3996 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 5209 3905 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 5700 3400 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 5300 2700 50  0001 C CNN
	1    5650 3950
	-1   0    0    -1  
$EndComp
Text GLabel 4850 3850 0    50   Output ~ 0
SWCLK
Text GLabel 4850 3950 0    50   BiDi ~ 0
SWDIO
Text GLabel 4850 3650 0    50   Output ~ 0
NRST
$Comp
L power:GND #PWR?
U 1 1 5C9344E4
P 5700 4650
AR Path="/5C9344E4" Ref="#PWR?"  Part="1" 
AR Path="/5C92AF24/5C9344E4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 4400 50  0001 C CNN
F 1 "GND" H 5705 4477 50  0000 C CNN
F 2 "" H 5700 4650 50  0001 C CNN
F 3 "" H 5700 4650 50  0001 C CNN
	1    5700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4650 5700 4600
Wire Wire Line
	5700 4600 5650 4600
Wire Wire Line
	5650 4600 5650 4550
Wire Wire Line
	5700 4600 5750 4600
Wire Wire Line
	5750 4600 5750 4550
Connection ~ 5700 4600
Wire Wire Line
	5150 3950 4850 3950
Wire Wire Line
	4850 3850 5150 3850
Wire Wire Line
	5150 3650 4850 3650
$Comp
L power:+3.3V #PWR?
U 1 1 5C9344F3
P 5650 3300
AR Path="/5C9344F3" Ref="#PWR?"  Part="1" 
AR Path="/5C92AF24/5C9344F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 3150 50  0001 C CNN
F 1 "+3.3V" H 5665 3473 50  0000 C CNN
F 2 "" H 5650 3300 50  0001 C CNN
F 3 "" H 5650 3300 50  0001 C CNN
	1    5650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3300 5650 3350
NoConn ~ 5150 4050
NoConn ~ 5150 4150
$EndSCHEMATC
