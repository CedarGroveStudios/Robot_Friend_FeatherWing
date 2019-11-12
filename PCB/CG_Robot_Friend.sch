EESchema Schematic File Version 4
LIBS:CG_Robot_Friend-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Robot_Friend_FeatherWing"
Date "2019-11-11"
Rev "v03"
Comp "Cedar Grove Studios"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6075 5725 2    50   ~ 0
SDA
Text Label 6075 5625 2    50   ~ 0
SCL
Text Label 4175 5325 0    50   ~ 0
MOSI
Text Label 4175 5225 0    50   ~ 0
SCLK
Text Label 4175 4625 0    50   ~ 0
AUDIO_OUT
Wire Wire Line
	4575 4625 4175 4625
$Comp
L power:GND #PWR014
U 1 1 5EA74731
P 9450 4150
F 0 "#PWR014" H 9450 3900 50  0001 C CNN
F 1 "GND" H 9455 3977 50  0000 C CNN
F 2 "" H 9450 4150 50  0001 C CNN
F 3 "" H 9450 4150 50  0001 C CNN
	1    9450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4050 9450 4150
$Comp
L Adafruit:Feather_M4_Express M1
U 1 1 5E1B5088
P 2625 5025
F 0 "M1" H 2625 6090 50  0000 C CNN
F 1 "PyBadge_PyGamer_Wing" H 2625 5999 50  0000 C CNN
F 2 "Adafruit:Adafruit_PyBadge_PyGamer_Wing_conn_no_mounting_holes" H 2625 5075 50  0001 C CNN
F 3 "" H 2625 5075 50  0001 C CNN
	1    2625 5025
	1    0    0    -1  
$EndComp
Text Label 4175 4225 0    50   ~ 0
~RESET
Wire Wire Line
	4175 4225 4575 4225
Text Label 4175 4325 0    50   ~ 0
3V3
Wire Wire Line
	4175 4325 4575 4325
Text Label 4175 4525 0    50   ~ 0
GND
Wire Wire Line
	4175 4525 4575 4525
Text Label 9250 4050 0    50   ~ 0
GND
Wire Wire Line
	9250 4050 9450 4050
Text Label 4175 5425 0    50   ~ 0
MISO
Wire Wire Line
	4175 5425 4575 5425
Wire Wire Line
	4175 5325 4575 5325
Wire Wire Line
	4175 5225 4575 5225
Wire Wire Line
	5675 4725 6075 4725
Text Label 6075 4725 2    50   ~ 0
ENABLE
Wire Wire Line
	5675 5625 6075 5625
Wire Wire Line
	5675 5725 6075 5725
Text Label 3575 5725 2    50   ~ 0
SDA
Text Label 3575 5625 2    50   ~ 0
SCL
Text Label 1675 5325 0    50   ~ 0
MOSI
Text Label 1675 5225 0    50   ~ 0
SCLK
Text Label 1675 4625 0    50   ~ 0
AUDIO_OUT
Wire Wire Line
	2075 4625 1675 4625
$Comp
L Adafruit:Feather_M4_Express M2
U 1 1 5DCE1256
P 5125 5025
F 0 "M2" H 5125 6090 50  0000 C CNN
F 1 "Crickit_FeatherWing" H 5125 5999 50  0000 C CNN
F 2 "Adafruit:Adafruit_Crickit_Flip_no_mounting_holes" H 5125 5075 50  0001 C CNN
F 3 "" H 5125 5075 50  0001 C CNN
	1    5125 5025
	1    0    0    -1  
$EndComp
Text Label 1675 4225 0    50   ~ 0
~RESET
Wire Wire Line
	1675 4225 2075 4225
Text Label 1675 4325 0    50   ~ 0
3V3
Wire Wire Line
	1675 4325 2075 4325
Text Label 1675 4525 0    50   ~ 0
GND
Wire Wire Line
	1675 4525 2075 4525
Text Label 1675 5425 0    50   ~ 0
MISO
Wire Wire Line
	1675 5425 2075 5425
Wire Wire Line
	1675 5325 2075 5325
Wire Wire Line
	1675 5225 2075 5225
Wire Wire Line
	3175 4725 3575 4725
Text Label 3575 4725 2    50   ~ 0
ENABLE
Wire Wire Line
	3175 5625 3575 5625
Wire Wire Line
	3175 5725 3575 5725
$Comp
L conn:CONN_01X18 J2
U 1 1 5DC4EA27
P 8375 4900
F 0 "J2" H 8500 5775 50  0000 C CNN
F 1 "PROTO" H 8575 5700 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 8375 4900 50  0001 C CNN
F 3 "" H 8375 4900 50  0001 C CNN
	1    8375 4900
	-1   0    0    -1  
$EndComp
$Comp
L conn:CONN_01X18 J1
U 1 1 5DC4EAA0
P 7550 4900
F 0 "J1" H 7625 5775 50  0000 L CNN
F 1 "PROTO" H 7625 5700 50  0000 L CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 7550 4900 50  0001 C CNN
F 3 "" H 7550 4900 50  0001 C CNN
	1    7550 4900
	1    0    0    -1  
$EndComp
Text Label 4175 4425 0    50   ~ 0
AREF
Wire Wire Line
	4175 4425 4575 4425
Text Label 4175 5125 0    50   ~ 0
A5
Wire Wire Line
	4175 5125 4575 5125
Text Label 4175 4725 0    50   ~ 0
~~A1
Wire Wire Line
	4175 4725 4575 4725
Text Label 4175 4825 0    50   ~ 0
A2
Wire Wire Line
	4175 4825 4575 4825
Text Label 4175 4925 0    50   ~ 0
A3
Wire Wire Line
	4175 4925 4575 4925
Text Label 4175 5025 0    50   ~ 0
A4
Wire Wire Line
	4175 5025 4575 5025
Text Label 4175 5525 0    50   ~ 0
RX
Wire Wire Line
	4175 5525 4575 5525
Text Label 4175 5625 0    50   ~ 0
TX
Wire Wire Line
	4175 5625 4575 5625
Text Label 4175 5725 0    50   ~ 0
D4
Wire Wire Line
	4175 5725 4575 5725
Text Label 6075 4925 2    50   ~ 0
D13
Text Label 6075 4825 2    50   ~ 0
USB
Wire Wire Line
	5675 4825 6075 4825
Wire Wire Line
	5675 4925 6075 4925
Text Label 6075 5125 2    50   ~ 0
D11
Text Label 6075 5025 2    50   ~ 0
D12
Wire Wire Line
	5675 5025 6075 5025
Wire Wire Line
	5675 5125 6075 5125
Text Label 6075 5325 2    50   ~ 0
D9
Text Label 6075 5225 2    50   ~ 0
D10
Wire Wire Line
	5675 5225 6075 5225
Wire Wire Line
	5675 5325 6075 5325
Text Label 6075 5525 2    50   ~ 0
D5
Text Label 6075 5425 2    50   ~ 0
D6
Wire Wire Line
	5675 5425 6075 5425
Wire Wire Line
	5675 5525 6075 5525
Text Label 6075 4625 2    50   ~ 0
BAT
Wire Wire Line
	5675 4625 6075 4625
Text Label 8975 5750 2    50   ~ 0
SDA
Text Label 8975 5650 2    50   ~ 0
SCL
Wire Wire Line
	8575 4750 8975 4750
Text Label 8975 4750 2    50   ~ 0
ENABLE
Wire Wire Line
	8575 5650 8975 5650
Wire Wire Line
	8575 5750 8975 5750
Text Label 8975 4950 2    50   ~ 0
D13
Text Label 8975 4850 2    50   ~ 0
USB
Wire Wire Line
	8575 4850 8975 4850
Wire Wire Line
	8575 4950 8975 4950
Text Label 8975 5150 2    50   ~ 0
D11
Text Label 8975 5050 2    50   ~ 0
D12
Wire Wire Line
	8575 5050 8975 5050
Wire Wire Line
	8575 5150 8975 5150
Text Label 8975 5350 2    50   ~ 0
D9
Text Label 8975 5250 2    50   ~ 0
D10
Wire Wire Line
	8575 5250 8975 5250
Wire Wire Line
	8575 5350 8975 5350
Text Label 8975 5550 2    50   ~ 0
D5
Text Label 8975 5450 2    50   ~ 0
D6
Wire Wire Line
	8575 5450 8975 5450
Wire Wire Line
	8575 5550 8975 5550
Text Label 8975 4650 2    50   ~ 0
BAT
Wire Wire Line
	8575 4650 8975 4650
Text Label 6950 5350 0    50   ~ 0
MOSI
Text Label 6950 5250 0    50   ~ 0
SCLK
Text Label 6950 4650 0    50   ~ 0
AUDIO_OUT
Wire Wire Line
	7350 4650 6950 4650
Text Label 6950 4250 0    50   ~ 0
~RESET
Wire Wire Line
	6950 4250 7350 4250
Text Label 6950 4350 0    50   ~ 0
3V3
Wire Wire Line
	6950 4350 7350 4350
Text Label 6950 4550 0    50   ~ 0
GND
Wire Wire Line
	6950 4550 7350 4550
Text Label 6950 5450 0    50   ~ 0
MISO
Wire Wire Line
	6950 5450 7350 5450
Wire Wire Line
	6950 5350 7350 5350
Wire Wire Line
	6950 5250 7350 5250
Text Label 6950 4450 0    50   ~ 0
AREF
Wire Wire Line
	6950 4450 7350 4450
Text Label 6950 5150 0    50   ~ 0
A5
Wire Wire Line
	6950 5150 7350 5150
Text Label 6950 4750 0    50   ~ 0
~~A1
Wire Wire Line
	6950 4750 7350 4750
Text Label 6950 4850 0    50   ~ 0
A2
Wire Wire Line
	6950 4850 7350 4850
Text Label 6950 4950 0    50   ~ 0
A3
Wire Wire Line
	6950 4950 7350 4950
Text Label 6950 5050 0    50   ~ 0
A4
Wire Wire Line
	6950 5050 7350 5050
Text Label 6950 5550 0    50   ~ 0
RX
Wire Wire Line
	6950 5550 7350 5550
Text Label 6950 5650 0    50   ~ 0
TX
Wire Wire Line
	6950 5650 7350 5650
Text Label 6950 5750 0    50   ~ 0
D4
Wire Wire Line
	6950 5750 7350 5750
$Comp
L conn:CONN_01X18 J3
U 1 1 5DCA8361
P 1800 2375
F 0 "J3" H 1925 2625 50  0000 C CNN
F 1 "PROTO" H 2000 2525 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 1800 2375 50  0001 C CNN
F 3 "" H 1800 2375 50  0001 C CNN
	1    1800 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8575 4150 8975 4150
Text Label 8975 4150 2    50   ~ 0
3V3
Text Label 8975 4350 2    50   ~ 0
3V3
Text Label 8975 4250 2    50   ~ 0
~RESET
Wire Wire Line
	8575 4250 8975 4250
Wire Wire Line
	8575 4350 8975 4350
Text Label 8975 4550 2    50   ~ 0
GND
Wire Wire Line
	8575 4450 8975 4450
Wire Wire Line
	8575 4550 8975 4550
Text Label 8975 4050 2    50   ~ 0
GND
Wire Wire Line
	8575 4050 8975 4050
Text Label 6950 4150 0    50   ~ 0
3V3
Wire Wire Line
	6950 4150 7350 4150
Text Label 6950 4050 0    50   ~ 0
GND
Wire Wire Line
	6950 4050 7350 4050
Wire Wire Line
	2000 1625 2400 1625
Text Label 2400 1625 2    50   ~ 0
3V3
Text Label 2400 1525 2    50   ~ 0
GND
Wire Wire Line
	2000 1525 2400 1525
$Comp
L conn:CONN_01X18 J4
U 1 1 5DCCDC26
P 2525 2375
F 0 "J4" H 2650 2625 50  0000 C CNN
F 1 "PROTO" H 2725 2525 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 2525 2375 50  0001 C CNN
F 3 "" H 2525 2375 50  0001 C CNN
	1    2525 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2725 1625 3125 1625
Text Label 3125 1625 2    50   ~ 0
3V3
Text Label 3125 1525 2    50   ~ 0
GND
Wire Wire Line
	2725 1525 3125 1525
$Comp
L conn:CONN_01X18 J5
U 1 1 5DCD180E
P 3250 2375
F 0 "J5" H 3375 2625 50  0000 C CNN
F 1 "PROTO" H 3450 2525 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 3250 2375 50  0001 C CNN
F 3 "" H 3250 2375 50  0001 C CNN
	1    3250 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 1625 3850 1625
Text Label 3850 1625 2    50   ~ 0
3V3
Text Label 3850 1525 2    50   ~ 0
GND
Wire Wire Line
	3450 1525 3850 1525
$Comp
L conn:CONN_01X18 J6
U 1 1 5DCD1818
P 3975 2375
F 0 "J6" H 4100 2625 50  0000 C CNN
F 1 "PROTO" H 4175 2525 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 3975 2375 50  0001 C CNN
F 3 "" H 3975 2375 50  0001 C CNN
	1    3975 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4175 1625 4575 1625
Text Label 4575 1625 2    50   ~ 0
3V3
Text Label 4575 1525 2    50   ~ 0
GND
Wire Wire Line
	4175 1525 4575 1525
$Comp
L conn:CONN_01X18 J7
U 1 1 5DCD585A
P 4700 2375
F 0 "J7" H 4825 2625 50  0000 C CNN
F 1 "PROTO" H 4900 2525 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 4700 2375 50  0001 C CNN
F 3 "" H 4700 2375 50  0001 C CNN
	1    4700 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 1625 5300 1625
Text Label 5300 1625 2    50   ~ 0
3V3
Text Label 5300 1525 2    50   ~ 0
GND
Wire Wire Line
	4900 1525 5300 1525
$Comp
L conn:CONN_01X18 J8
U 1 1 5DCD5864
P 5425 2375
F 0 "J8" H 5550 2625 50  0000 C CNN
F 1 "PROTO" H 5625 2525 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 5425 2375 50  0001 C CNN
F 3 "" H 5425 2375 50  0001 C CNN
	1    5425 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5625 1625 6025 1625
Text Label 6025 1625 2    50   ~ 0
3V3
Text Label 6025 1525 2    50   ~ 0
GND
Wire Wire Line
	5625 1525 6025 1525
$Comp
L conn:CONN_01X18 J9
U 1 1 5DCD586E
P 6150 2375
F 0 "J9" H 6275 2625 50  0000 C CNN
F 1 "PROTO" H 6350 2525 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 6150 2375 50  0001 C CNN
F 3 "" H 6150 2375 50  0001 C CNN
	1    6150 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 1625 6750 1625
Text Label 6750 1625 2    50   ~ 0
3V3
Text Label 6750 1525 2    50   ~ 0
GND
Wire Wire Line
	6350 1525 6750 1525
$Comp
L conn:CONN_01X09 J10
U 1 1 5DCD5878
P 7300 1925
F 0 "J10" H 7450 2075 50  0000 C CNN
F 1 "PROTO" H 7500 1975 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x09_Pitch2.54mm_nosilk" H 7300 1925 50  0001 C CNN
F 3 "" H 7300 1925 50  0001 C CNN
	1    7300 1925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7500 1625 7900 1625
Text Label 7900 1625 2    50   ~ 0
3V3
Text Label 7900 1525 2    50   ~ 0
GND
Wire Wire Line
	7500 1525 7900 1525
Text Label 1675 4425 0    50   ~ 0
AREF
Wire Wire Line
	1675 4425 2075 4425
Text Label 1675 5125 0    50   ~ 0
A5
Wire Wire Line
	1675 5125 2075 5125
Text Label 1675 4725 0    50   ~ 0
~~A1
Wire Wire Line
	1675 4725 2075 4725
Text Label 1675 4825 0    50   ~ 0
A2
Wire Wire Line
	1675 4825 2075 4825
Text Label 1675 4925 0    50   ~ 0
A3
Wire Wire Line
	1675 4925 2075 4925
Text Label 1675 5025 0    50   ~ 0
A4
Wire Wire Line
	1675 5025 2075 5025
Text Label 1675 5525 0    50   ~ 0
RX
Wire Wire Line
	1675 5525 2075 5525
Text Label 1675 5625 0    50   ~ 0
TX
Wire Wire Line
	1675 5625 2075 5625
Text Label 1675 5725 0    50   ~ 0
D4
Wire Wire Line
	1675 5725 2075 5725
Text Label 3575 4625 2    50   ~ 0
BAT
Wire Wire Line
	3175 4625 3575 4625
Text Label 3575 4925 2    50   ~ 0
D13
Text Label 3575 4825 2    50   ~ 0
USB
Wire Wire Line
	3175 4825 3575 4825
Wire Wire Line
	3175 4925 3575 4925
Text Label 3575 5125 2    50   ~ 0
D11
Text Label 3575 5025 2    50   ~ 0
D12
Wire Wire Line
	3175 5025 3575 5025
Wire Wire Line
	3175 5125 3575 5125
Text Label 3575 5325 2    50   ~ 0
D9
Text Label 3575 5225 2    50   ~ 0
D10
Wire Wire Line
	3175 5225 3575 5225
Wire Wire Line
	3175 5325 3575 5325
Text Label 3575 5525 2    50   ~ 0
D5
Text Label 3575 5425 2    50   ~ 0
D6
Wire Wire Line
	3175 5425 3575 5425
Wire Wire Line
	3175 5525 3575 5525
$Comp
L conn:CONN_01X09 J11
U 1 1 5DC90487
P 8025 1925
F 0 "J11" H 8175 2075 50  0000 C CNN
F 1 "PROTO" H 8225 1975 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x09_Pitch2.54mm_nosilk" H 8025 1925 50  0001 C CNN
F 3 "" H 8025 1925 50  0001 C CNN
	1    8025 1925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8225 1625 8625 1625
Text Label 8625 1625 2    50   ~ 0
3V3
Text Label 8625 1525 2    50   ~ 0
GND
Wire Wire Line
	8225 1525 8625 1525
$Comp
L conn:CONN_01X09 J12
U 1 1 5DC90491
P 8750 1925
F 0 "J12" H 8900 2075 50  0000 C CNN
F 1 "PROTO" H 8950 1975 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x09_Pitch2.54mm_nosilk" H 8750 1925 50  0001 C CNN
F 3 "" H 8750 1925 50  0001 C CNN
	1    8750 1925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8950 1625 9350 1625
Text Label 9350 1625 2    50   ~ 0
3V3
Text Label 9350 1525 2    50   ~ 0
GND
Wire Wire Line
	8950 1525 9350 1525
Text Label 8975 4450 2    50   ~ 0
GND
Wire Notes Line
	1325 3600 6625 3600
Wire Notes Line
	6625 3600 6625 6075
Wire Notes Line
	6625 6075 9900 6075
Wire Notes Line
	9900 6075 9900 975 
Wire Notes Line
	9900 975  1325 975 
Wire Notes Line
	1325 975  1325 3600
Text Notes 5200 1250 0    50   ~ 0
Prototyping Area
$Comp
L conn:CONN_01X03 J13
U 1 1 5DCC6D06
P 7300 3125
F 0 "J13" H 7450 3275 50  0000 C CNN
F 1 "PROTO" H 7500 3175 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x03_Pitch2.54mm_no_silk" H 7300 3125 50  0001 C CNN
F 3 "" H 7300 3125 50  0001 C CNN
	1    7300 3125
	-1   0    0    -1  
$EndComp
$Comp
L conn:CONN_01X03 J14
U 1 1 5DCC6E29
P 8025 3125
F 0 "J14" H 8175 3275 50  0000 C CNN
F 1 "PROTO" H 8225 3175 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x03_Pitch2.54mm_no_silk" H 8025 3125 50  0001 C CNN
F 3 "" H 8025 3125 50  0001 C CNN
	1    8025 3125
	-1   0    0    -1  
$EndComp
$Comp
L conn:CONN_01X03 J15
U 1 1 5DCCDC6A
P 8750 3125
F 0 "J15" H 8900 3275 50  0000 C CNN
F 1 "PROTO" H 8950 3175 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x03_Pitch2.54mm_no_silk" H 8750 3125 50  0001 C CNN
F 3 "" H 8750 3125 50  0001 C CNN
	1    8750 3125
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
