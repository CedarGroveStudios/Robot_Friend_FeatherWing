# cedargrove_pypanel.py
# Cedar Grove Studios 2019-12-09-10 v00
# uses revised adafruit_pybadger and adafruit_crickit

import board
i2c = board.I2C()  # establish i2C instance for Stemma devices

# Enumerate Stemma/I2C-connected devices
stemma = []  # clear the list

import adafruit_mcp4725  # Stemma-attached 12-bit DAC
try:  # test to confirm the module is attached to Stemma/I2C
    mcp4725 = adafruit_mcp4725.MCP4725(i2c)
    mcp4725.normalized_value = 0.0  # set DAC output to see if attached
    stemma.append(("mcp4725", mcp4725, "12-bit DAC"))
except: pass

import adafruit_ssd1306  # Stemma-attached oled
try:  # test to confirm the module is attached to Stemma/I2C
    ssd1306 = adafruit_ssd1306.SSD1306_I2C(128, 32, i2c)
    ssd1306.fill(0)
    stemma.append(("ssd1306", ssd1306, "128x32 OLED"))
except: pass

# establish Crickit instance
from adafruit_crickit import crickit
try:  # test to confirm the module is attached to Stemma/i2C
    crickit.init_neopixel(1, brightness=0.01)
    crickit.onboard_pixel.brightness = 0.01
    stemma.append(("crickit", crickit, "Crickit Wing"))
except: pass

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
