config = {
	'mcp4725' : {
		'name'     : 'MCP4725',
		'desc'     : '12-bit DAC',
		'import'   : 'import adafruit_mcp4725',
		'instance' : 'mcp4725 = adafruit_mcp4725.MCP4725(i2c)',
		'test'     : 'mcp4725.normalized_value = 0.0'
		},

	'ssd1306' : {
		'name'     : 'SSD1306',
		'desc'     : '128x 32 OLED',
		'import'   : 'import adafruit_ssd1306',
		'instance' : 'ssd1306 = adafruit_ssd1306.SSD1306_I2C(128, 32, i2c)',
		'test'     : 'ssd1306.fill(0)'
		},

	'crickit' : {  # needs to be last I2C device; locks bus
		'name'     : 'Crickit',
		'desc'     : 'Crickit Wing',
		'import'   : 'from adafruit_crickit import crickit',
		'instance' : 'crickit.init_neopixel(1, brightness=0.01)',
		'test'     : 'crickit.onboard_pixel.brightness = 0.01'
		}
}

"""
	class : {
		'name'     : name,
		'desc'     : description,
		'import'   : import string to execute,
		'instance' : instance string to execute,
		'test'     : test string to execute
		}
"""
