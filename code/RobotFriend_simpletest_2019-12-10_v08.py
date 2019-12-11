# RobotFriend_simpletest_2019-12-10_v08.py
# uses revised adafruit_pybadger and adafruit_crickit
# uses cedargrove_pypanel to abstract Crickit and PyBadge/PyGamer

import time
import random as rand
from cedargrove_pypanel import *

test_delay = 0.25  # seconds between tests

try:
    stemma_dac.normalized_value = 0.5  # 1.65v output
    print("12-bit Stemma DAC --connected--")
except:
    print("12-bit Stemma DAC not connected (MCP4725)")

# set Crickit on-board NeoPixel to purple
crickit.onboard_pixel[0] = (255, 24, 255)
# or
crickit.onboard_pixel.fill((255, 24, 255))

# PyBadge test
panel.pixels.fill((255, 24, 255))  # dim purple neopixels
panel.brightness = 0.9  # set initial display brightness
panel.show_badge(name_string="RobotFriend", hello_scale=2, my_name_is_scale=1, name_scale=2)
time.sleep(test_delay)
panel.show_terminal()

# Text area test
# Set text, font, and color
text = "HELLO WORLD"
font = terminalio.FONT
# font = pp.bitmap_font.load_font("/Helvetica-Bold-16.bdf")
color = 0x0000FF
# Create the text label
text_area = label.Label(font, text="HELLO WORLD", color=0x00FF00)
# Set the location
text_area.x = 50
text_area.y = 60
# Show it
panel.display.show(text_area)
time.sleep(test_delay)

# Bitmap graphics test
with open("/RobotFriend_tiny.bmp", "rb") as bitmap_file:
    # Setup the file as the bitmap data source
    bitmap = displayio.OnDiskBitmap(bitmap_file)
    # Create a TileGrid to hold the bitmap
    tile_grid = displayio.TileGrid(bitmap, pixel_shader=displayio.ColorConverter())
    # Create a Group to hold the TileGrid
    group = displayio.Group()
    # Add the TileGrid to the Group
    group.append(tile_grid)
    # Add the Group to the Display
    display.show(group)
    display.wait_for_frame()
    time.sleep(test_delay)

# Turtle graphics test
def hilbert2(step, rule, angle, depth, t):
    if depth > 0:
        a = lambda: hilbert2(step, "a", angle, depth - 1, t)
        b = lambda: hilbert2(step, "b", angle, depth - 1, t)
        left = lambda: t.left(angle)
        right = lambda: t.right(angle)
        forward = lambda: t.forward(step)
        if rule == "a":
            left(); b(); forward(); right(); a(); forward(); a(); right(); forward(); b(); left()
        if rule == "b":
            right(); a(); forward(); left(); b(); forward(); b(); left(); forward(); a(); right()

turtle = turtle(board.DISPLAY)
turtle.penup()

turtle.goto(-45, -45)
turtle.pendown()
hilbert2(6, "a", 90, 4, turtle)

time.sleep(test_delay)

# Wave file to speaker test
panel.play_tone(440, 0.25)
time.sleep(0.25)
panel.play_file("rimshot.wav")
time.sleep(test_delay)

# DC motor test
# turn off motors
crickit.dc_motor_1.throttle = 0.0
crickit.dc_motor_2.throttle = 0.0
vel = 1.0
crickit.dc_motor_1.throttle = vel
crickit.dc_motor_2.throttle = vel
time.sleep(test_delay)
crickit.dc_motor_1.throttle = -1 * vel
crickit.dc_motor_2.throttle = -1 * vel
time.sleep(test_delay)
crickit.dc_motor_1.throttle = 0.0
crickit.dc_motor_2.throttle = 0.0
time.sleep(test_delay)

# test of Servo 1
crickit.servo_1.angle = 90
time.sleep(test_delay)
crickit.servo_1.angle = 0
time.sleep(test_delay)
crickit.servo_1.angle = 180
time.sleep(test_delay)

print("RobotFriend_simpletest_2019-12-10_v08.py")
print("----------------------------------------")

t1 = time.time()
select_state = True
panel.show_terminal()

while True:
    t2 = time.monotonic()

    if panel.button.select:
        if select_state:
            panel.show_badge(name_string="RobotFriend", hello_scale=2, my_name_is_scale=1, name_scale=2)
        else:
            panel.show_terminal()
        while panel.button.select:
            time.sleep(0.1)  # allow button to release
        select_state = not(select_state)

    panel.pixels.fill([0, 0, 0])
    # print(panel.joystick)  # if PyGamer
    # print(panel.button)  # to show state of buttons
    print("----------")
    print("T:%6.0f, L:%1.2f" % (t2, panel.light/65536))
    print("X:%2.1f, Y:%2.1f, Z:%2.1f" % (panel.acceleration[0], panel.acceleration[1], panel.acceleration[2]))
    # scale and format for plotter
    print((int(panel.light / 65536 * 100) / 100, int(panel.acceleration[0] * 10) / 100,
           int(panel.acceleration[1] * 10) / 100, int(panel.acceleration[2] * 10) / 100))

    panel.pixels[int(t2) % 5] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]
    crickit.onboard_pixel[0] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]

    panel.auto_dim_display(delay=20, movement_threshold=1)

    time.sleep(test_delay)
