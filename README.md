Base info
---------
The script tested with `Deepl-Linux-Electron.AppImage` v1.5.0

The script essentially automates the process of copying text from the current window, opening DeepL, pasting the text for translation to the programm, and then returning the translated text back to the original place (window).

The script is based on Deepl-linux-electron: https://github.com/kumakichi/Deepl-linux-electron
The shortcut for the program must be default: `Control_L+Shift_L+F9`.


Installation
------------

### Install the program itself (for Ubuntu)

1. Download and place `Deepl-Linux-Electron.AppImage` file to the current root folder. Take it here: https://github.com/kumakichi/Deepl-linux-electron/releases
2. Ensure that the `Deepl-Linux-Electron.AppImage` file is executable.
3. Create the `~/.local/share/applications/deepl.desktop` file with the following code:
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
4. Add a startup application for Ubuntu. Set up the following command: `gtk-launch deepl`. `deepl` refers to `deepl.desktop`.

### Set up hotkey (for Ubuntu)

1. Open `Settings > Keyboard > Keyboard Shortcuts > Custom Shortcuts`.
2. Bind the following command to the desired hotkey, for example, `Shift+F1`:
   ```
   bash /home/kama/Programs/deepl/deepl-hotkey.sh
   ```

Dependencies
------------
For the script to work correctly, you need to install the following packages:

- g3kb-switch: https://github.com/lyokha/g3kb-switch
- libfuse2
- xsel
- xdotool

```
sudo apt-get update
sudo apt install libfuse2 -y
sudo apt-get install xsel -y
sudo apt-get install xdotool -y
```  

Links
-----
- https://www.deepl.com/translator
