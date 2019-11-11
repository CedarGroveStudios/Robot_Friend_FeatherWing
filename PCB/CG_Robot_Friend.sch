EESchema Schematic File Version 4
LIBS:CG_Robot_Friend-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Robot_Friend_FeatherWing"
Date "2019-11-08"
Rev "v01"
Comp "Cedar Grove Studios"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5650 7525 2    50   ~ 0
SDA
Text Label 5650 7425 2    50   ~ 0
SCL
Text Label 3750 7125 0    50   ~ 0
MOSI
Text Label 3750 7025 0    50   ~ 0
SCLK
Text Label 3750 6425 0    50   ~ 0
AUDIO_OUT
Wire Wire Line
	4150 6425 3750 6425
$Comp
L power:GND #PWR014
U 1 1 5EA74731
P 3800 4550
F 0 "#PWR014" H 3800 4300 50  0001 C CNN
F 1 "GND" H 3805 4377 50  0000 C CNN
F 2 "" H 3800 4550 50  0001 C CNN
F 3 "" H 3800 4550 50  0001 C CNN
	1    3800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4450 3800 4550
$Comp
L Adafruit:Feather_M4_Express M1
U 1 1 5E1B5088
P 2200 6825
F 0 "M1" H 2200 7890 50  0000 C CNN
F 1 "PyBadge_PyGamer_Wing" H 2200 7799 50  0000 C CNN
F 2 "Adafruit:Adafruit_PyBadge_PyGamer_Wing_conn_no_mounting_holes" H 2200 6875 50  0001 C CNN
F 3 "" H 2200 6875 50  0001 C CNN
	1    2200 6825
	1    0    0    -1  
$EndComp
Text Label 3750 6025 0    50   ~ 0
~RESET
Wire Wire Line
	3750 6025 4150 6025
Text Label 3750 6125 0    50   ~ 0
3V3
Wire Wire Line
	3750 6125 4150 6125
Text Label 3750 6325 0    50   ~ 0
GND
Wire Wire Line
	3750 6325 4150 6325
Text Label 3600 4450 0    50   ~ 0
GND
Wire Wire Line
	3600 4450 3800 4450
Text Label 3750 7225 0    50   ~ 0
MISO
Wire Wire Line
	3750 7225 4150 7225
Wire Wire Line
	3750 7125 4150 7125
Wire Wire Line
	3750 7025 4150 7025
Wire Wire Line
	5250 6525 5650 6525
Text Label 5650 6525 2    50   ~ 0
ENABLE
Wire Wire Line
	5250 7425 5650 7425
Wire Wire Line
	5250 7525 5650 7525
Text Label 3150 7525 2    50   ~ 0
SDA
Text Label 3150 7425 2    50   ~ 0
SCL
Text Label 1250 7125 0    50   ~ 0
MOSI
Text Label 1250 7025 0    50   ~ 0
SCLK
Text Label 1250 6425 0    50   ~ 0
AUDIO_OUT
Wire Wire Line
	1650 6425 1250 6425
$Comp
L Adafruit:Feather_M4_Express M2
U 1 1 5DCE1256
P 4700 6825
F 0 "M2" H 4700 7890 50  0000 C CNN
F 1 "Crickit_FeatherWing" H 4700 7799 50  0000 C CNN
F 2 "Adafruit:Adafruit_Crickit_Flip_no_mounting_holes" H 4700 6875 50  0001 C CNN
F 3 "" H 4700 6875 50  0001 C CNN
	1    4700 6825
	1    0    0    -1  
$EndComp
Text Label 1250 6025 0    50   ~ 0
~RESET
Wire Wire Line
	1250 6025 1650 6025
Text Label 1250 6125 0    50   ~ 0
3V3
Wire Wire Line
	1250 6125 1650 6125
Text Label 1250 6325 0    50   ~ 0
GND
Wire Wire Line
	1250 6325 1650 6325
Text Label 1250 7225 0    50   ~ 0
MISO
Wire Wire Line
	1250 7225 1650 7225
Wire Wire Line
	1250 7125 1650 7125
Wire Wire Line
	1250 7025 1650 7025
Wire Wire Line
	2750 6525 3150 6525
Text Label 3150 6525 2    50   ~ 0
ENABLE
Wire Wire Line
	2750 7425 3150 7425
Wire Wire Line
	2750 7525 3150 7525
$Comp
L conn:CONN_01X18 J2
U 1 1 5DC4EA27
P 2625 4600
F 0 "J2" H 2750 4850 50  0000 C CNN
F 1 "PROTO" H 2825 4750 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 2625 4600 50  0001 C CNN
F 3 "" H 2625 4600 50  0001 C CNN
	1    2625 4600
	-1   0    0    -1  
$EndComp
$Comp
L conn:CONN_01X18 J1
U 1 1 5DC4EAA0
P 1800 4600
F 0 "J1" H 1878 4641 50  0000 L CNN
F 1 "PROTO" H 1878 4550 50  0000 L CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 1800 4600 50  0001 C CNN
F 3 "" H 1800 4600 50  0001 C CNN
	1    1800 4600
	1    0    0    -1  
$EndComp
Text Label 3750 6225 0    50   ~ 0
AREF
Wire Wire Line
	3750 6225 4150 6225
Text Label 3750 6925 0    50   ~ 0
A5
Wire Wire Line
	3750 6925 4150 6925
Text Label 3750 6525 0    50   ~ 0
~~A1
Wire Wire Line
	3750 6525 4150 6525
Text Label 3750 6625 0    50   ~ 0
A2
Wire Wire Line
	3750 6625 4150 6625
Text Label 3750 6725 0    50   ~ 0
A3
Wire Wire Line
	3750 6725 4150 6725
Text Label 3750 6825 0    50   ~ 0
A4
Wire Wire Line
	3750 6825 4150 6825
Text Label 3750 7325 0    50   ~ 0
RX
Wire Wire Line
	3750 7325 4150 7325
Text Label 3750 7425 0    50   ~ 0
TX
Wire Wire Line
	3750 7425 4150 7425
Text Label 3750 7525 0    50   ~ 0
D4
Wire Wire Line
	3750 7525 4150 7525
Text Label 5650 6725 2    50   ~ 0
D13
Text Label 5650 6625 2    50   ~ 0
USB
Wire Wire Line
	5250 6625 5650 6625
Wire Wire Line
	5250 6725 5650 6725
Text Label 5650 6925 2    50   ~ 0
D11
Text Label 5650 6825 2    50   ~ 0
D12
Wire Wire Line
	5250 6825 5650 6825
Wire Wire Line
	5250 6925 5650 6925
Text Label 5650 7125 2    50   ~ 0
D9
Text Label 5650 7025 2    50   ~ 0
D10
Wire Wire Line
	5250 7025 5650 7025
Wire Wire Line
	5250 7125 5650 7125
Text Label 5650 7325 2    50   ~ 0
D5
Text Label 5650 7225 2    50   ~ 0
D6
Wire Wire Line
	5250 7225 5650 7225
Wire Wire Line
	5250 7325 5650 7325
Text Label 5650 6425 2    50   ~ 0
BAT
Wire Wire Line
	5250 6425 5650 6425
Text Label 3225 5450 2    50   ~ 0
SDA
Text Label 3225 5350 2    50   ~ 0
SCL
Wire Wire Line
	2825 4450 3225 4450
Text Label 3225 4450 2    50   ~ 0
ENABLE
Wire Wire Line
	2825 5350 3225 5350
Wire Wire Line
	2825 5450 3225 5450
Text Label 3225 4650 2    50   ~ 0
D13
Text Label 3225 4550 2    50   ~ 0
USB
Wire Wire Line
	2825 4550 3225 4550
Wire Wire Line
	2825 4650 3225 4650
Text Label 3225 4850 2    50   ~ 0
D11
Text Label 3225 4750 2    50   ~ 0
D12
Wire Wire Line
	2825 4750 3225 4750
Wire Wire Line
	2825 4850 3225 4850
Text Label 3225 5050 2    50   ~ 0
D9
Text Label 3225 4950 2    50   ~ 0
D10
Wire Wire Line
	2825 4950 3225 4950
Wire Wire Line
	2825 5050 3225 5050
Text Label 3225 5250 2    50   ~ 0
D5
Text Label 3225 5150 2    50   ~ 0
D6
Wire Wire Line
	2825 5150 3225 5150
Wire Wire Line
	2825 5250 3225 5250
Text Label 3225 4350 2    50   ~ 0
BAT
Wire Wire Line
	2825 4350 3225 4350
Text Label 1200 5050 0    50   ~ 0
MOSI
Text Label 1200 4950 0    50   ~ 0
SCLK
Text Label 1200 4350 0    50   ~ 0
AUDIO_OUT
Wire Wire Line
	1600 4350 1200 4350
Text Label 1200 3950 0    50   ~ 0
~RESET
Wire Wire Line
	1200 3950 1600 3950
Text Label 1200 4050 0    50   ~ 0
3V3
Wire Wire Line
	1200 4050 1600 4050
Text Label 1200 4250 0    50   ~ 0
GND
Wire Wire Line
	1200 4250 1600 4250
Text Label 1200 5150 0    50   ~ 0
MISO
Wire Wire Line
	1200 5150 1600 5150
Wire Wire Line
	1200 5050 1600 5050
Wire Wire Line
	1200 4950 1600 4950
Text Label 1200 4150 0    50   ~ 0
AREF
Wire Wire Line
	1200 4150 1600 4150
Text Label 1200 4850 0    50   ~ 0
A5
Wire Wire Line
	1200 4850 1600 4850
Text Label 1200 4450 0    50   ~ 0
~~A1
Wire Wire Line
	1200 4450 1600 4450
Text Label 1200 4550 0    50   ~ 0
A2
Wire Wire Line
	1200 4550 1600 4550
Text Label 1200 4650 0    50   ~ 0
A3
Wire Wire Line
	1200 4650 1600 4650
Text Label 1200 4750 0    50   ~ 0
A4
Wire Wire Line
	1200 4750 1600 4750
Text Label 1200 5250 0    50   ~ 0
RX
Wire Wire Line
	1200 5250 1600 5250
Text Label 1200 5350 0    50   ~ 0
TX
Wire Wire Line
	1200 5350 1600 5350
Text Label 1200 5450 0    50   ~ 0
D4
Wire Wire Line
	1200 5450 1600 5450
$Comp
L conn:CONN_01X18 J3
U 1 1 5DCA8361
P 1075 1875
F 0 "J3" H 1200 2125 50  0000 C CNN
F 1 "PROTO" H 1275 2025 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 1075 1875 50  0001 C CNN
F 3 "" H 1075 1875 50  0001 C CNN
	1    1075 1875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2825 3850 3225 3850
Text Label 3225 3850 2    50   ~ 0
3V3
Text Label 3225 4050 2    50   ~ 0
3V3
Text Label 3225 3950 2    50   ~ 0
~RESET
Wire Wire Line
	2825 3950 3225 3950
Wire Wire Line
	2825 4050 3225 4050
Text Label 3225 4250 2    50   ~ 0
GND
Wire Wire Line
	2825 4150 3225 4150
Wire Wire Line
	2825 4250 3225 4250
Text Label 3225 3750 2    50   ~ 0
GND
Wire Wire Line
	2825 3750 3225 3750
Text Label 1200 3850 0    50   ~ 0
3V3
Wire Wire Line
	1200 3850 1600 3850
Text Label 1200 3750 0    50   ~ 0
GND
Wire Wire Line
	1200 3750 1600 3750
Wire Wire Line
	1275 1125 1675 1125
Text Label 1675 1125 2    50   ~ 0
3V3
Text Label 1675 1025 2    50   ~ 0
GND
Wire Wire Line
	1275 1025 1675 1025
$Comp
L conn:CONN_01X18 J4
U 1 1 5DCCDC26
P 1800 1900
F 0 "J4" H 1925 2150 50  0000 C CNN
F 1 "PROTO" H 2000 2050 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 1800 1900 50  0001 C CNN
F 3 "" H 1800 1900 50  0001 C CNN
	1    1800 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 1150 2400 1150
Text Label 2400 1150 2    50   ~ 0
3V3
Text Label 2400 1050 2    50   ~ 0
GND
Wire Wire Line
	2000 1050 2400 1050
$Comp
L conn:CONN_01X18 J5
U 1 1 5DCD180E
P 2525 1900
F 0 "J5" H 2650 2150 50  0000 C CNN
F 1 "PROTO" H 2725 2050 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 2525 1900 50  0001 C CNN
F 3 "" H 2525 1900 50  0001 C CNN
	1    2525 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2725 1150 3125 1150
Text Label 3125 1150 2    50   ~ 0
3V3
Text Label 3125 1050 2    50   ~ 0
GND
Wire Wire Line
	2725 1050 3125 1050
$Comp
L conn:CONN_01X18 J6
U 1 1 5DCD1818
P 3250 1925
F 0 "J6" H 3375 2175 50  0000 C CNN
F 1 "PROTO" H 3450 2075 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 3250 1925 50  0001 C CNN
F 3 "" H 3250 1925 50  0001 C CNN
	1    3250 1925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 1175 3850 1175
Text Label 3850 1175 2    50   ~ 0
3V3
Text Label 3850 1075 2    50   ~ 0
GND
Wire Wire Line
	3450 1075 3850 1075
$Comp
L conn:CONN_01X18 J7
U 1 1 5DCD585A
P 3925 1925
F 0 "J7" H 4050 2175 50  0000 C CNN
F 1 "PROTO" H 4125 2075 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 3925 1925 50  0001 C CNN
F 3 "" H 3925 1925 50  0001 C CNN
	1    3925 1925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4125 1175 4525 1175
Text Label 4525 1175 2    50   ~ 0
3V3
Text Label 4525 1075 2    50   ~ 0
GND
Wire Wire Line
	4125 1075 4525 1075
$Comp
L conn:CONN_01X18 J8
U 1 1 5DCD5864
P 4650 1950
F 0 "J8" H 4775 2200 50  0000 C CNN
F 1 "PROTO" H 4850 2100 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 4650 1950 50  0001 C CNN
F 3 "" H 4650 1950 50  0001 C CNN
	1    4650 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 1200 5250 1200
Text Label 5250 1200 2    50   ~ 0
3V3
Text Label 5250 1100 2    50   ~ 0
GND
Wire Wire Line
	4850 1100 5250 1100
$Comp
L conn:CONN_01X18 J9
U 1 1 5DCD586E
P 5375 1950
F 0 "J9" H 5500 2200 50  0000 C CNN
F 1 "PROTO" H 5575 2100 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 5375 1950 50  0001 C CNN
F 3 "" H 5375 1950 50  0001 C CNN
	1    5375 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5575 1200 5975 1200
Text Label 5975 1200 2    50   ~ 0
3V3
Text Label 5975 1100 2    50   ~ 0
GND
Wire Wire Line
	5575 1100 5975 1100
$Comp
L conn:CONN_01X18 J10
U 1 1 5DCD5878
P 6100 1975
F 0 "J10" H 6225 2225 50  0000 C CNN
F 1 "PROTO" H 6300 2125 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 6100 1975 50  0001 C CNN
F 3 "" H 6100 1975 50  0001 C CNN
	1    6100 1975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 1225 6700 1225
Text Label 6700 1225 2    50   ~ 0
3V3
Text Label 6700 1125 2    50   ~ 0
GND
Wire Wire Line
	6300 1125 6700 1125
Text Label 1250 6225 0    50   ~ 0
AREF
Wire Wire Line
	1250 6225 1650 6225
Text Label 1250 6925 0    50   ~ 0
A5
Wire Wire Line
	1250 6925 1650 6925
Text Label 1250 6525 0    50   ~ 0
~~A1
Wire Wire Line
	1250 6525 1650 6525
Text Label 1250 6625 0    50   ~ 0
A2
Wire Wire Line
	1250 6625 1650 6625
Text Label 1250 6725 0    50   ~ 0
A3
Wire Wire Line
	1250 6725 1650 6725
Text Label 1250 6825 0    50   ~ 0
A4
Wire Wire Line
	1250 6825 1650 6825
Text Label 1250 7325 0    50   ~ 0
RX
Wire Wire Line
	1250 7325 1650 7325
Text Label 1250 7425 0    50   ~ 0
TX
Wire Wire Line
	1250 7425 1650 7425
Text Label 1250 7525 0    50   ~ 0
D4
Wire Wire Line
	1250 7525 1650 7525
Text Label 3150 6425 2    50   ~ 0
BAT
Wire Wire Line
	2750 6425 3150 6425
Text Label 3150 6725 2    50   ~ 0
D13
Text Label 3150 6625 2    50   ~ 0
USB
Wire Wire Line
	2750 6625 3150 6625
Wire Wire Line
	2750 6725 3150 6725
Text Label 3150 6925 2    50   ~ 0
D11
Text Label 3150 6825 2    50   ~ 0
D12
Wire Wire Line
	2750 6825 3150 6825
Wire Wire Line
	2750 6925 3150 6925
Text Label 3150 7125 2    50   ~ 0
D9
Text Label 3150 7025 2    50   ~ 0
D10
Wire Wire Line
	2750 7025 3150 7025
Wire Wire Line
	2750 7125 3150 7125
Text Label 3150 7325 2    50   ~ 0
D5
Text Label 3150 7225 2    50   ~ 0
D6
Wire Wire Line
	2750 7225 3150 7225
Wire Wire Line
	2750 7325 3150 7325
$Comp
L conn:CONN_01X18 J11
U 1 1 5DC90487
P 6875 1975
F 0 "J11" H 7000 2225 50  0000 C CNN
F 1 "PROTO" H 7075 2125 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 6875 1975 50  0001 C CNN
F 3 "" H 6875 1975 50  0001 C CNN
	1    6875 1975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7075 1225 7475 1225
Text Label 7475 1225 2    50   ~ 0
3V3
Text Label 7475 1125 2    50   ~ 0
GND
Wire Wire Line
	7075 1125 7475 1125
$Comp
L conn:CONN_01X18 J12
U 1 1 5DC90491
P 7600 2000
F 0 "J12" H 7725 2250 50  0000 C CNN
F 1 "PROTO" H 7800 2150 50  0000 C CNN
F 2 "Adafruit:Pin_Header_Straight_1x18_Pitch2.54mm_nosilk" H 7600 2000 50  0001 C CNN
F 3 "" H 7600 2000 50  0001 C CNN
	1    7600 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 1250 8200 1250
Text Label 8200 1250 2    50   ~ 0
3V3
Text Label 8200 1150 2    50   ~ 0
GND
Wire Wire Line
	7800 1150 8200 1150
Text Label 3225 4150 2    50   ~ 0
GND
$EndSCHEMATC
