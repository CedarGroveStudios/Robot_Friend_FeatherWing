# Robot_Friend_simpletest_2019-12-04_v02.py

import time
import random as rand

# establish Crickit instance
from adafruit_crickit import crickit
crickit.init_neopixel(0)
ss = crickit.seesaw

# set up on-board Seesaw NeoPixel
from adafruit_seesaw.neopixel import NeoPixel
sspixel = NeoPixel(ss, 27, 1, brightness=0.01)
sspixel.fill([128, 0, 0])

# establish PyBadger instance
from adafruit_pybadger import PyBadger
pybadger = PyBadger()

# intialize PyBadge
pybadger.pixels.fill([1, 0, 0])  # dim red neopixels
pybadger.brightness = 0.9  # set initial display brightness
pybadger.show_badge(name_string="RobotFriend", hello_scale=2, my_name_is_scale=1, name_scale=2)
time.sleep(3)

# turn off motors
crickit.dc_motor_1.throttle = 0.0
crickit.dc_motor_2.throttle = 0.0

t1 = time.time()

print("Robot_Friend_simpletest_2019-12-04_v02.py")
print("-----------------------------------------")

while True:
    t2 = time.monotonic()

    pybadger.pixels.fill([0, 0, 0])
    print(t2, pybadger.light, pybadger.acceleration)
    # print(pybadger.joystick)  # if PyGamer
    print(pybadger.button)
    print((pybadger.light/35536, pybadger.acceleration[0] / 10, pybadger.acceleration[1] / 10, pybadger.acceleration[2] / 10))

    pybadger.pixels[int(t2) % 5] = [rand.randint(0, 4), rand.randint(0, 4), rand.randint(0, 4)]
    sspixel[0] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]

    pybadger.auto_dim_display(delay=10, movement_threshold=1)

    time.sleep(0.5)
