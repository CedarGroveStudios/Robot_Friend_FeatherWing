# Robot_Friend_simpletest_2019-12-03_v01.py

import board
import busio
import digitalio
from analogio import AnalogIn
import time
import random as rand

import neopixel # for Seesaw NeoPixel
from adafruit_seesaw.seesaw import Seesaw
from adafruit_seesaw.pwmout import PWMOut
from adafruit_seesaw.neopixel import NeoPixel

from adafruit_pybadger import PyBadger

from adafruit_motor import motor, servo

i2c_bus = busio.I2C(board.SCL, board.SDA)

# set up PyBadger instance
pybadger = PyBadger(i2c=i2c_bus)
pybadger.brightness = 0.9
pybadger.show_badge(name_string="RobotFriend", hello_scale=2, my_name_is_scale=1, name_scale=2)
pybadger.auto_dim_display(delay=5.0, movement_threshold=10)
time.sleep(3)

# set up Seesaw
ss = Seesaw(i2c_bus, addr=73)

# set up two DC motors
motors = []
for ss_pin in ((18, 19), (22, 23)):
    pwm0 = PWMOut(ss, ss_pin[0])
    pwm1 = PWMOut(ss, ss_pin[1])
    _motor = motor.DCMotor(pwm0, pwm1)
    motors.append(_motor)

# set up Seesaw NeoPixel
sspixel = NeoPixel(ss, 27, 1, brightness=0.01, auto_write=False, pixel_order=neopixel.GRB)

t1 = time.time()

print("Robot_Friend_simpletest_2019-12-03_v01.py")
print("-----------------------------------------")

while True:
    t2 = time.monotonic()
    pybadger.pixels.fill([0, 0, 0])
    sspixel.fill([0, 0, 0])
    print(t2, pybadger.light, pybadger.acceleration)
    # print(pybadger.joystick)  # if PyGamer
    print(pybadger.button)
    print((pybadger.light/35536, pybadger.acceleration))

    pybadger.pixels[int(t2) % 5] = [rand.randint(0, 4), rand.randint(0, 4), rand.randint(0, 4)]

    sspixel[0] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]
    sspixel.show()

    time.sleep(0.5)
