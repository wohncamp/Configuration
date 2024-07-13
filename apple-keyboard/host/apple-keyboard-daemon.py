import serial
from serial.tools import list_ports

from pynput.keyboard import Key, Controller

from simple_term_menu import TerminalMenu

import adb


shift_pressed = False


def get_device():
    options = [p.device for p in list_ports.comports()]
    selected = TerminalMenu(options).show()

    return options[selected]


arduino = serial.Serial(get_device(), baudrate=9600, timeout=.1)
keyboard = Controller()

while True:
    try:
        b = arduino.read(1)
        if len(b) == 0 or b[0] == 0b11111111:
            continue

        key = adb.convert(b[0], shift_pressed)
        if key == Key.shift:
            shift_pressed = b[0] & 0b10000000 == 0

        if key is not None:
            if b[0] & 0b10000000 == 0:
                # print(f'Press {key}')
                keyboard.press(key)
            else:
                # print(f'Release {key}')
                keyboard.release(key)
    except KeyboardInterrupt:
        print("Terminating...")
        break
