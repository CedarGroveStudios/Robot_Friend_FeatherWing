# Robot_Friend_simpletest_2019-12-01_v00.py

import board
import busio
import digitalio
from analogio import AnalogIn
import time
import neopixel
import random as rand
from adafruit_motor import motor
from adafruit_seesaw.pwmout import PWMOut
from adafruit_seesaw.neopixel import NeoPixel
from adafruit_seesaw.seesaw import Seesaw
import adafruit_lis3dh as accel

i2c = busio.I2C(board.SCL, board.SDA)
# while not i2c.try_lock():
    # pass
# print(i2c.scan())
# i2c.deinit()

# set up Seesaw
ss = Seesaw(i2c, addr=73)

# set up two DC motors
motors = []
for ss_pin in ((18, 19), (22, 23)):
    pwm0 = PWMOut(ss, ss_pin[0])
    pwm1 = PWMOut(ss, ss_pin[1])
    _motor = motor.DCMotor(pwm0, pwm1)
    motors.append(_motor)

# set up accelerometer
int1 = digitalio.DigitalInOut(board.ACCELEROMETER_INTERRUPT)  # accelerometer interrupt pin
lis3dh = accel.LIS3DH_I2C(i2c, int1=int1, address=24)

# set up Seesaw NeoPixel
sspixel = NeoPixel(ss, 27, 1, brightness=0.01, auto_write=False, pixel_order=neopixel.GRB)

# set up PyBadger NeoPixel strip
pixels = neopixel.NeoPixel(board.NEOPIXEL, 5, brightness=0.01, auto_write=False, pixel_order=neopixel.GRB)

light = AnalogIn(board.LIGHT)

t1 = time.time()

print("Robot_Friend_simpletest_2019-12-01_v00.py")
print("-----------------------------------------")

while True:
    t2 = time.monotonic()
    pixels.fill([0, 0, 0])
    sspixel.fill([0, 0, 0])
    x, y, z = [value / accel.STANDARD_GRAVITY for value in lis3dh.acceleration]
    print(t2, light.value)
    print("x = %0.3f G, y = %0.3f G, z = %0.3f G" % (x, y, z))
    # print(i2c.scan(), t2)

    pixels[int(t2) % 5] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]
    pixels.show()

    sspixel[0] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]
    sspixel.show()

    time.sleep(0.1)
