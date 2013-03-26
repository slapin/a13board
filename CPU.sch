EESchema Schematic File Version 2  date Втр 26 Мар 2013 13:07:04
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
LIBS:special
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
LIBS:A13
LIBS:allwinner_a13
LIBS:ax209
LIBS:hynix
LIBS:hy27ug088g5m
LIBS:h5tq2g43cfr
LIBS:sy8008baac
LIBS:a13board-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date "26 mar 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L A13 U2
U 1 1 515122E2
P 5700 3250
F 0 "U2" H 5650 2750 50  0000 C CNN
F 1 "A13" H 5650 2950 50  0000 C CNN
F 2 "" H 5700 3250 60  0000 C CNN
F 3 "" H 5700 3250 60  0000 C CNN
	1    5700 3250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR46
U 1 1 51516C06
P 6050 7000
F 0 "#PWR46" H 6050 6960 30  0001 C CNN
F 1 "+3.3V" H 6050 7110 30  0000 C CNN
F 2 "" H 6050 7000 60  0000 C CNN
F 3 "" H 6050 7000 60  0000 C CNN
	1    6050 7000
	1    0    0    -1  
$EndComp
Text GLabel 4300 6950 0    60   Input ~ 0
1.2V_CPU
Text GLabel 4300 7100 0    60   Input ~ 0
1.2V_INT
Text GLabel 4300 7250 0    60   Input ~ 0
VPP
$Comp
L C C24
U 1 1 5151814E
P 6450 7450
F 0 "C24" H 6500 7550 50  0000 L CNN
F 1 "22uF/6.3V" H 6500 7350 50  0000 L CNN
F 2 "" H 6450 7450 60  0000 C CNN
F 3 "" H 6450 7450 60  0000 C CNN
	1    6450 7450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR47
U 1 1 51518167
P 6450 7700
F 0 "#PWR47" H 6450 7700 30  0001 C CNN
F 1 "GND" H 6450 7630 30  0001 C CNN
F 2 "" H 6450 7700 60  0000 C CNN
F 3 "" H 6450 7700 60  0000 C CNN
	1    6450 7700
	1    0    0    -1  
$EndComp
Text GLabel 2650 6000 0    60   Input ~ 0
RESET
Text GLabel 8650 4700 2    60   Input ~ 0
TWI0_SDA
Text GLabel 8650 4850 2    60   Input ~ 0
TWI0_SCK
Text GLabel 8650 5050 2    60   Input ~ 0
USB_UDP1
Text GLabel 8650 5200 2    60   Input ~ 0
USB_UDM1
Text GLabel 8650 5350 2    60   Input ~ 0
USB_UDP0
Text GLabel 8650 5500 2    60   Input ~ 0
USB_UDM0
Text GLabel 9300 4050 2    60   Input ~ 0
SDC0_D0
Text GLabel 8800 4150 2    60   Input ~ 0
SDC0_D1
Text GLabel 9300 4250 2    60   Input ~ 0
SDC0_D2
Text GLabel 8800 4350 2    60   Input ~ 0
SDC0_D3
Text GLabel 9300 4450 2    60   Input ~ 0
SDC0_CMD
Text GLabel 8800 4550 2    60   Input ~ 0
SDC0_CLK
Wire Wire Line
	6150 6750 6150 7050
Wire Wire Line
	6150 6850 6450 6850
Wire Wire Line
	6450 6850 6450 6750
Wire Wire Line
	6250 6750 6250 6850
Connection ~ 6250 6850
Wire Wire Line
	6350 6750 6350 6850
Connection ~ 6350 6850
Wire Wire Line
	6050 7050 7050 7050
Wire Wire Line
	6050 7050 6050 7000
Connection ~ 6150 6850
Wire Wire Line
	5350 6750 5350 6850
Wire Wire Line
	5350 6850 4650 6850
Wire Wire Line
	4650 6750 4650 6950
Wire Wire Line
	4750 6750 4750 6850
Connection ~ 4750 6850
Wire Wire Line
	4850 6750 4850 6850
Connection ~ 4850 6850
Wire Wire Line
	4950 6750 4950 6850
Connection ~ 4950 6850
Wire Wire Line
	5050 6750 5050 6850
Connection ~ 5050 6850
Wire Wire Line
	5150 6750 5150 6850
Connection ~ 5150 6850
Wire Wire Line
	5250 6750 5250 6850
Connection ~ 5250 6850
Wire Wire Line
	5950 6750 5950 6850
Wire Wire Line
	5950 6850 5550 6850
Wire Wire Line
	5550 6750 5550 7100
Wire Wire Line
	5650 6750 5650 6850
Connection ~ 5650 6850
Wire Wire Line
	5750 6750 5750 6850
Connection ~ 5750 6850
Wire Wire Line
	5850 6750 5850 6850
Connection ~ 5850 6850
Wire Wire Line
	4650 6950 4300 6950
Connection ~ 4650 6850
Wire Wire Line
	5550 7100 4300 7100
Connection ~ 5550 6850
Wire Wire Line
	6650 6750 6650 7250
Wire Wire Line
	6650 7250 4300 7250
Wire Wire Line
	6450 7650 6450 7700
Wire Wire Line
	6750 6750 6750 7650
Wire Wire Line
	6750 7650 6450 7650
Wire Wire Line
	2650 6000 2950 6000
Wire Wire Line
	6950 7050 6950 6750
Connection ~ 6150 7050
Wire Wire Line
	7050 7050 7050 6750
Connection ~ 6950 7050
Wire Wire Line
	8450 4750 8500 4750
Wire Wire Line
	8500 4750 8500 4700
Wire Wire Line
	8500 4700 8650 4700
Wire Wire Line
	8450 4850 8650 4850
Wire Wire Line
	8450 5050 8650 5050
Wire Wire Line
	8450 5150 8550 5150
Wire Wire Line
	8550 5150 8550 5200
Wire Wire Line
	8550 5200 8650 5200
Wire Wire Line
	8450 5350 8650 5350
Wire Wire Line
	8450 5450 8550 5450
Wire Wire Line
	8550 5450 8550 5500
Wire Wire Line
	8550 5500 8650 5500
Wire Wire Line
	8450 4050 9300 4050
Wire Wire Line
	8450 4150 8800 4150
Wire Wire Line
	8450 4250 9300 4250
Wire Wire Line
	8450 4350 8800 4350
Wire Wire Line
	8450 4450 9300 4450
Wire Wire Line
	8450 4550 8800 4550
Text GLabel 2650 5600 0    60   Input ~ 0
UBOOT
Wire Wire Line
	2650 5600 2950 5600
$EndSCHEMATC
