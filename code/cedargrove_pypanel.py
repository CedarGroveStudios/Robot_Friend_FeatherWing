# cedargrove_pypanel.py
# Cedar Grove Studios 2019-12-09-10 v00
# uses revised adafruit_pybadger and adafruit_crickit

import board
i2c = board.I2C()  # establish i2C instance for Stemma devices

# Stemma-connected devices section
import adafruit_mcp4725  # example for Stemma-attached 12-bit DAC
stemma_dac = adafruit_mcp4725.MCP4725(i2c)

# establish Crickit instance
from adafruit_crickit import crickit
crickit.init_neopixel(1, brightness=0.01)
crickit.onboard_pixel.brightness = 0.01

# establish PyBadger instance
from adafruit_pybadger import PyBadger
panel = PyBadger(pixels_brightness=0.01)

# establish terminalio text display instance
import terminalio
from adafruit_display_text import label
display = board.DISPLAY

# establish displayio instance
import displayio
display = board.DISPLAY

# establish turtle graphics instance
from adafruit_turtle import turtle
