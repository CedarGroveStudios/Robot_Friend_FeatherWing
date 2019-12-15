# cedargrove_pypanel.py
# Cedar Grove Studios 2019-12-14 v01
# uses revised adafruit_pybadger and adafruit_crickit
# configuration dictionary is contained in 'pypanel_config.py'

import board
i2c = board.I2C()  # establish i2C instance for Stemma devices

# Enumerate Stemma/I2C-connected devices
stemma = []  # clear the list

try:
    from pypanel_config import *
except:
    raise RuntimeError("Missing pypanel_config.py file")

st = []  # temporary list of possible devices
for i in config.keys():
    st.append(i)

for j in range(0, len(st)):
    try:
        exec(config[st[j]]['import'])
        exec(config[st[j]]['instance'])
        exec(config[st[j]]['test'])
        stemma.append((st[j], config[st[j]]['name'], config[st[j]]['desc']))
    except:
        pass

# establish PyBadger instance
from adafruit_pybadger import PyBadger
panel = PyBadger(pixels_brightness=0.01)

if hasattr(board, "JOYSTICK_X"):
    panel.has_joystick = True
else: panel.has_joystick = False

# establish terminalio text display instance
import terminalio
from adafruit_display_text import label
display = board.DISPLAY

# establish displayio instance
import displayio
display = board.DISPLAY

# establish turtle graphics instance
from adafruit_turtle import turtle
