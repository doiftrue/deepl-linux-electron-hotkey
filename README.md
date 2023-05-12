## Base info

The script is based on Deepl-linux-electron: https://github.com/kumakichi/Deepl-linux-electron
The shortcut for the programm must be deafult: `Control_L+Shift_L+F9`.

## Installation

Add hotkey in Ubuntu `Settings > Keyboard > Custom Shortcuts`. Bind the command for desired hotkey, for example `Shift+F1`: 

    bash /home/kama/Programs/deepl/deepl-hotkey.sh


## Dependencies

For the script works correctly you need install the following packeges:

g3kb-switch: https://github.com/lyokha/g3kb-switch
libfuse2
xsel
xdotool

    sudo apt-get update
    sudo apt install libfuse2 -y
    sudo apt-get install xsel -y
    sudo apt-get install xdotool -y


## Links

- https://www.deepl.com/translator
