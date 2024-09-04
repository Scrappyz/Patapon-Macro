# Patapon-Macro
A simple macro using AutoHotkey for [Patapon 3](https://en.wikipedia.org/wiki/Patapon_3).

## Installation
### Requirements
- [AutoHotkey v2](https://www.autohotkey.com/)

After you have installed AutoHotkey, download the [ahk file](patapon.ahk).

## Usage
1. Run the ahk file.
2. Open `Patapon 3` then press the one of the corresponding hotkeys on-time with the beat:
    - `Alt + A`: Advance
    - `Alt + S`: Attack
    - `Alt + D`: Defend
3. To stop, press the same hotkey again or press `Esc` to end the script entirely.

### Configuration
The timing of the button presses and the keybinds can be configured by modifying the global variables at the top of the ahk file.

#### Keybinds
`chaka`, `pata`, `don` and `pon` are currently assigned to `w`, `a`, `s`, `d` respectively. Feel free to change this in the `Keybinds` section of the script. If you have trouble assigning a key, refer to the [list of keys](https://www.autohotkey.com/docs/v2/KeyList.htm) in AutoHotkey.

#### Delays
The delay between pressing, releasing, between each button, and commands are modifiable in the `Delays` section of the script. Delays are measured in milliseconds (ms).

Variables:
- `release_delay`: The delay between pressing and releasing a key.
- `button_delay`: The delay before pressing the next button. (E.g. Delay between `pata` and `pon`)
- `command_delay`: The delay between commands. (E.g. Delay between `pata pata pata pon` and `pon pon pata pon`)

#### Command Hotkeys
The command hotkeys are modifiable in the `Commands` section of the script. Refer to the [list of keys](https://www.autohotkey.com/docs/v2/KeyList.htm) and use `&` to combine keys. However, AutoHotkey only supports up to two keys for a hotkey but more keys can be assigned with workarounds.