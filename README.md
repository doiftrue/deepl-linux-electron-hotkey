Version
-------
Used `Deepl-Linux-Electron.AppImage` version is v1.4.3


Base info
---------

The script is based on Deepl-linux-electron: https://github.com/kumakichi/Deepl-linux-electron
The shortcut for the programm must be deafult: `Control_L+Shift_L+F9`.


Installation
------------

### Instal the programm itself (for Ubuntu)

1. Enshure that `Deepl-Linux-Electron.AppImage` file is executable.
2. Create `~/.local/share/applications/deepl.desktop` file with the following code:
    ```
    [Desktop Entry]
    Comment=Deepl Linux Electron
    Exec=/home/kama/Programs/deepl/Deepl-Linux-Electron.AppImage
    GenericName=Deepl-Linux-Electron
    Name=Deepl Linux Electron
    Type=Application
    Categories=Education;
    Icon=/home/kama/Programs/deepl/tray-icon.svg
    Keywords=Deepl;Translator;translate;Language
    ```
3. Add Startup application for ubuntu. Set up the following command `gtk-launch deepl`. deepl refers to `deepl.desktop`.


### Setup hotkey (for Ubuntu)

1. Open `Settings > Keyboard > Keyboard Shortcuts > Custom Shortcuts`.
2. Bind the following command for desired hotkey. For example `Shift+F1`: 
    ```
    bash /home/kama/Programs/deepl/deepl-hotkey.sh
    ```


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
