from pynput.keyboard import Key


def convert(b, shift_pressed):
    val = b & 0b01111111
    match val:
        case 0x0c:
            return 'q'
        case 0x0d:
            return 'w'
        case 0x0e:
            return 'e'
        case 0x0f:
            return 'r'
        case 0x11:
            return 't'
        case 0x10:
            return 'y'
        case 0x20:
            return 'u'
        case 0x22:
            return 'i'
        case 0x1f:
            return 'o'
        case 0x23:
            return 'p'
        case 0x21:
            return '['
        case 0x1E:
            return ']'
        case 0x2a:
            return '\\'
        case 0x00:
            return 'a'
        case 0x01:
            return 's'
        case 0x02:
            return 'd'
        case 0x03:
            return 'f'
        case 0x05:
            return 'g'
        case 0x04:
            return 'h'
        case 0x26:
            return 'j'
        case 0x28:
            return 'k'
        case 0x25:
            return 'l'
        case 0x29:
            return ';'
        case 0x27:
            return "'"
        case 0x06:
            return 'z'
        case 0x07:
            return 'x'
        case 0x08:
            return 'c'
        case 0x09:
            return 'v'
        case 0x0b:
            return 'b'
        case 0x2d:
            return 'n'
        case 0x2e:
            return 'm'
        case 0x2b:
            return ','
        case 0x2f:
            return '.'
        case 0x2c:
            return '/'
        case 0x24:
            return Key.enter
        case 0x38:
            return Key.shift
        case 0x33:
            return Key.backspace
        case 0x3b:
            return Key.left
        case 0x3c:
            return Key.right
        case 0x3e:
            return Key.up
        case 0x3d:
            return Key.down
        case 0x35:
            return Key.esc
        case 0x30:
            return Key.tab
        case 0x36:
            return Key.ctrl_l
        case 0x32:
            return '`'
        case 0x37:
            return Key.cmd
        case 0x3a:
            return Key.alt_l
        case 0x31:
            return Key.space
        case 0x12:
            return '1' if not shift_pressed else '!'
        case 0x13:
            return '2' if not shift_pressed else '@'
        case 0x14:
            return '3' if not shift_pressed else '#'
        case 0x15:
            return '4' if not shift_pressed else '$'
        case 0x17:
            return '5' if not shift_pressed else '%'
        case 0x16:
            return '6' if not shift_pressed else '^'
        case 0x1a:
            return '7' if not shift_pressed else '&'
        case 0x1c:
            return '8' if not shift_pressed else '*'
        case 0x19:
            return '9' if not shift_pressed else '('
        case 0x1d:
            return '0' if not shift_pressed else ')'
        case 0x1b:
            return '-' if not shift_pressed else '_'
        case 0x18:
            return '=' if not shift_pressed else '+'

    print(f'- {val:02x}')
