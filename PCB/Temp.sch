EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Temp-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L 7SEGMENTS Digit0
U 1 1 57324652
P 9350 1600
F 0 "Digit0" H 9350 2150 50  0000 C CNN
F 1 "7SEGMENTS" H 9350 1150 50  0000 C CNN
F 2 "7SEG:LSHD-5601" H 9350 1600 50  0001 C CNN
F 3 "" H 9350 1600 50  0000 C CNN
	1    9350 1600
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS Digit1
U 1 1 57324713
P 9400 3200
F 0 "Digit1" H 9400 3750 50  0000 C CNN
F 1 "7SEGMENTS" H 9400 2750 50  0000 C CNN
F 2 "7SEG:LSHD-5601" H 9400 3200 50  0001 C CNN
F 3 "" H 9400 3200 50  0000 C CNN
	1    9400 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57324AC9
P 3650 4550
F 0 "#PWR01" H 3650 4300 50  0001 C CNN
F 1 "GND" H 3650 4400 50  0000 C CNN
F 2 "" H 3650 4550 50  0000 C CNN
F 3 "" H 3650 4550 50  0000 C CNN
	1    3650 4550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 57325785
P 3650 1900
F 0 "#PWR02" H 3650 1750 50  0001 C CNN
F 1 "+5V" H 3650 2040 50  0000 C CNN
F 2 "" H 3650 1900 50  0000 C CNN
F 3 "" H 3650 1900 50  0000 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 57325852
P 5700 3500
F 0 "R1" V 5780 3500 50  0000 C CNN
F 1 "10k" V 5700 3500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 5630 3500 50  0001 C CNN
F 3 "" H 5700 3500 50  0000 C CNN
	1    5700 3500
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR03
U 1 1 5732594F
P 5850 3400
F 0 "#PWR03" H 5850 3250 50  0001 C CNN
F 1 "+5V" H 5850 3540 50  0000 C CNN
F 2 "" H 5850 3400 50  0000 C CNN
F 3 "" H 5850 3400 50  0000 C CNN
	1    5850 3400
	1    0    0    -1  
$EndComp
NoConn ~ 9950 1250
NoConn ~ 9950 1850
NoConn ~ 10000 2850
NoConn ~ 10000 3450
NoConn ~ 5550 2750
NoConn ~ 5550 3000
NoConn ~ 5550 3100
NoConn ~ 5550 3200
NoConn ~ 5550 3300
NoConn ~ 5550 3400
NoConn ~ 5550 3950
NoConn ~ 5550 4050
NoConn ~ 5550 4150
NoConn ~ 5550 4250
NoConn ~ 5550 4350
$Comp
L ATMEGA328-P IC1
U 1 1 57324934
P 4550 3150
F 0 "IC1" H 3800 4400 50  0000 L BNN
F 1 "ATMEGA328-P" H 4950 1750 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 4550 3150 50  0000 C CIN
F 3 "" H 4550 3150 50  0000 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 POWER1
U 1 1 5733A9A3
P 2850 3100
F 0 "POWER1" H 2850 2800 50  0000 C CNN
F 1 "Power Pins" V 2950 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.00mm" H 2850 3100 50  0001 C CNN
F 3 "" H 2850 3100 50  0000 C CNN
	1    2850 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 4250 3650 4550
Connection ~ 3650 4350
Connection ~ 3650 2050
Connection ~ 3650 2350
Wire Wire Line
	5850 3500 5850 3400
Wire Wire Line
	5550 3750 5800 3750
Wire Wire Line
	5800 3750 5800 5700
Wire Wire Line
	5800 5700 10400 5700
Wire Wire Line
	10400 5700 10400 2750
Wire Wire Line
	10400 2750 10000 2750
Wire Wire Line
	5550 3650 5900 3650
Wire Wire Line
	5900 3650 5900 5550
Wire Wire Line
	5900 5550 10500 5550
Wire Wire Line
	10500 5550 10500 1150
Wire Wire Line
	10500 1150 9950 1150
Wire Wire Line
	6300 1800 8750 1800
Wire Wire Line
	8550 3400 8800 3400
Connection ~ 8550 3400
Wire Wire Line
	6200 1700 8750 1700
Wire Wire Line
	8450 3300 8800 3300
Connection ~ 8450 3300
Wire Wire Line
	6100 1600 8750 1600
Wire Wire Line
	8350 3200 8800 3200
Connection ~ 8350 3200
Wire Wire Line
	6000 1500 8750 1500
Wire Wire Line
	8250 3100 8800 3100
Connection ~ 8250 3100
Wire Wire Line
	5850 1400 8750 1400
Wire Wire Line
	8150 3000 8800 3000
Wire Wire Line
	5800 1300 8750 1300
Wire Wire Line
	8050 2900 8800 2900
Connection ~ 8150 3000
Connection ~ 8050 2900
Wire Wire Line
	5700 1200 8750 1200
Wire Wire Line
	7950 2800 8800 2800
Connection ~ 7950 2800
Connection ~ 8350 1600
Connection ~ 8250 1500
Connection ~ 8150 1400
Connection ~ 8050 1300
Connection ~ 7950 1200
Connection ~ 8450 1700
Connection ~ 8550 1800
Wire Wire Line
	7950 2800 7950 1200
Wire Wire Line
	8050 1300 8050 2900
Wire Wire Line
	8150 3000 8150 1400
Wire Wire Line
	8250 3100 8250 1500
Wire Wire Line
	8350 1600 8350 3200
Wire Wire Line
	8450 1700 8450 3300
Wire Wire Line
	8550 3400 8550 1800
Wire Wire Line
	3650 1900 3650 2350
Wire Wire Line
	3050 3050 3350 3050
Wire Wire Line
	3350 3050 3350 2050
Wire Wire Line
	3350 2050 3650 2050
Wire Wire Line
	3050 3150 3350 3150
Wire Wire Line
	3350 3150 3350 4350
Wire Wire Line
	3350 4350 3650 4350
NoConn ~ 3650 2650
Wire Wire Line
	5550 2050 5700 2050
Wire Wire Line
	5700 2050 5700 1200
Wire Wire Line
	5800 1300 5800 2150
Wire Wire Line
	5800 2150 5550 2150
Wire Wire Line
	5850 1400 5850 2250
Wire Wire Line
	5850 2250 5550 2250
Wire Wire Line
	6000 1500 6000 2350
Wire Wire Line
	6000 2350 5550 2350
Wire Wire Line
	6100 1600 6100 2450
Wire Wire Line
	6100 2450 5550 2450
Wire Wire Line
	6200 1700 6200 2550
Wire Wire Line
	6200 2550 5550 2550
Wire Wire Line
	6300 1800 6300 2650
Wire Wire Line
	6300 2650 5550 2650
NoConn ~ 5550 3850
Connection ~ 3350 2700
Wire Wire Line
	2550 2700 3350 2700
Wire Wire Line
	2550 4950 2550 2700
Wire Wire Line
	6300 4950 2550 4950
Wire Wire Line
	3650 4550 6700 4550
Wire Wire Line
	6700 4550 6700 3650
Connection ~ 6900 3650
Wire Wire Line
	6700 3650 6900 3650
$Comp
L GND #PWR04
U 1 1 5732A1E0
P 6900 3700
F 0 "#PWR04" H 6900 3450 50  0001 C CNN
F 1 "GND" H 6900 3550 50  0000 C CNN
F 2 "" H 6900 3700 50  0000 C CNN
F 3 "" H 6900 3700 50  0000 C CNN
	1    6900 3700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5732A0ED
P 6900 3450
F 0 "R3" V 6980 3450 50  0000 C CNN
F 1 "10k" V 6900 3450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 6830 3450 50  0001 C CNN
F 3 "" H 6900 3450 50  0000 C CNN
	1    6900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3600 6900 3700
Wire Wire Line
	6300 3500 6300 4950
Connection ~ 6300 3500
Wire Wire Line
	5850 3500 6600 3500
Wire Wire Line
	6600 3500 6600 3100
Wire Wire Line
	6600 3100 7100 3100
Connection ~ 6900 2900
Wire Wire Line
	5550 2900 6900 2900
Connection ~ 6900 2450
Wire Wire Line
	7100 3100 7100 2450
Wire Wire Line
	6900 2500 6900 2400
$Comp
L +5V #PWR05
U 1 1 5732A34B
P 6900 2400
F 0 "#PWR05" H 6900 2250 50  0001 C CNN
F 1 "+5V" H 6900 2540 50  0000 C CNN
F 2 "" H 6900 2400 50  0000 C CNN
F 3 "" H 6900 2400 50  0000 C CNN
	1    6900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2800 6900 3300
$Comp
L R R2
U 1 1 5732A2DC
P 6900 2650
F 0 "R2" V 6980 2650 50  0000 C CNN
F 1 "10k" V 6900 2650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 6830 2650 50  0001 C CNN
F 3 "" H 6900 2650 50  0000 C CNN
	1    6900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2450 6900 2450
$EndSCHEMATC
