# Robot_Friend_simpletest_2019-12-04_v03.py
# uses revised adafruit_pybadger and adafruit_crickit

import time
import random as rand

# establish Crickit instance
from adafruit_crickit import crickit
crickit.init_neopixel(0, brightness=0.01)
crickit.init_onboard_pixel(brightness=0.01)

crickit.onboard_pixel[0] = ((255, 24, 255))

# establish PyBadger instance
from adafruit_pybadger import PyBadger
pybadger = PyBadger(pixels_brightness=0.01)

# intialize PyBadge
pybadger.pixels.fill((255, 24, 255))  # dim red neopixels
pybadger.brightness = 0.9  # set initial display brightness
pybadger.show_badge(name_string="RobotFriend", hello_scale=2, my_name_is_scale=1, name_scale=2)
time.sleep(3)
pybadger.show_terminal()

# turn off motors
crickit.dc_motor_1.throttle = 0.0
crickit.dc_motor_2.throttle = 0.0

t1 = time.time()

print("Robot_Friend_simpletest_2019-12-04_v03.py")
print("-----------------------------------------")

select_state = False

while True:
    t2 = time.monotonic()

    if pybadger.button.select:
        if select_state:
            pybadger.show_badge(name_string="RobotFriend", hello_scale=2, my_name_is_scale=1, name_scale=2)
        else:
            pybadger.show_terminal()
        while pybadger.button.select:
            time.sleep(0.1)  # allow button to release
        select_state = not(select_state)

    pybadger.pixels.fill([0, 0, 0])
    print(t2, pybadger.light, pybadger.acceleration)
    # print(pybadger.joystick)  # if PyGamer
    print(pybadger.button)
    print((pybadger.light/35536, pybadger.acceleration[0] / 10, pybadger.acceleration[1] / 10, pybadger.acceleration[2] / 10))

    pybadger.pixels[int(t2) % 5] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]
    crickit.onboard_pixel[0] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]

    pybadger.auto_dim_display(delay=20, movement_threshold=1)

    time.sleep(0.25)
