# RobotFriend_simpletest_2019-12-08_v06.py
# uses revised adafruit_pybadger and adafruit_crickit

import board
import time
import random as rand

crickit_t = True  # Crickit library test
if crickit_t:
    # establish Crickit instance
    from adafruit_crickit import crickit
    crickit.init_neopixel(1, brightness=0.01)
    crickit.onboard_pixel.brightness = 0.01

    # set Crickit on-board NeoPixel to purple
    crickit.onboard_pixel[0] = (255, 24, 255)
    # or
    crickit.onboard_pixel.fill((255, 24, 255))

pybadger_t = True  # PyBadger library and show_badge/terminal test
if pybadger_t:
    # establish PyBadger instance
    from adafruit_pybadger import PyBadger
    pybadger = PyBadger(pixels_brightness=0.01)

    # intialize PyBadge
    pybadger.pixels.fill((255, 24, 255))  # dim red neopixels
    pybadger.brightness = 0.9  # set initial display brightness
    pybadger.show_badge(name_string="RobotFriend", hello_scale=2, my_name_is_scale=1, name_scale=2)
    time.sleep(2)
    pybadger.show_terminal()

text_t = True  # text display test
if text_t:
    import terminalio
    from adafruit_display_text import label
    display = board.DISPLAY

    # Set text, font, and color
    text = "HELLO WORLD"
    font = terminalio.FONT
    # font = bitmap_font.load_font("/Helvetica-Bold-16.bdf")
    color = 0x0000FF

    # Create the text label
    text_area = label.Label(font, text="HELLO WORLD", color=0x00FF00)

    # Set the location
    text_area.x = 50
    text_area.y = 60

    # Show it
    display.show(text_area)
    time.sleep(2)

bitmap_t = True  # bitmap graphics file test
if bitmap_t:
    import displayio

    display = board.DISPLAY

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
        time.sleep(1)

turtle_t = True  # Turtle graphics test
if turtle_t:
    from adafruit_turtle import turtle

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

    turtle.goto(-60, -60)
    turtle.pendown()
    hilbert2(4, "a", 90, 5, turtle)

    time.sleep(1)

# turn off motors
crickit.dc_motor_1.throttle = 0.0
crickit.dc_motor_2.throttle = 0.0

motor_t = True  # DC motor test
if motor_t:
    crickit.dc_motor_1.throttle = 1.0
    crickit.dc_motor_2.throttle = 1.0
    time.sleep(0.5)
    crickit.dc_motor_1.throttle = -1.0
    crickit.dc_motor_2.throttle = -1.0
    time.sleep(0.5)
    crickit.dc_motor_1.throttle = 0.0
    crickit.dc_motor_2.throttle = 0.0
    time.sleep(0.5)

print("RobotFriend_simpletest_2019-12-08_v06.py")
print("----------------------------------------")

t1 = time.time()
select_state = True
pybadger.show_terminal()

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
    # print(pybadger.joystick)  # if PyGamer
    # print(pybadger.button)  # to show state of buttons
    print("----------")
    print("T:%6.0f, L:%1.1f" % (t2, pybadger.light/65536))
    print("X:%2.1f, Y:%2.1f, Z:%2.1f" % (pybadger.acceleration[0], pybadger.acceleration[1], pybadger.acceleration[2]))
    # scale and format for plotter
    print((pybadger.light/65536, pybadger.acceleration[0] / 10, pybadger.acceleration[1] / 10, pybadger.acceleration[2] / 10))

    pybadger.pixels[int(t2) % 5] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]
    crickit.onboard_pixel[0] = [rand.randint(64, 255), rand.randint(64, 255), rand.randint(64, 255)]

    pybadger.auto_dim_display(delay=20, movement_threshold=1)

    time.sleep(0.5)
