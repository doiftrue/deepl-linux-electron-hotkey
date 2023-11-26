#!/bin/bash

#
# Dependencies
#     g3kb-switch: https://github.com/lyokha/g3kb-switch
#     sudo apt-get update -y
#     sudo apt-get install -y xsel
#     sudo apt-get install -y xdotool

# xdotool need to be run in `us` layout!
orig_layout="$(g3kb-switch)" && g3kb-switch -s us

# очистить текущие модификаторы нажатия
xdotool keyup Control_L Shift_L Alt_L

BASEDIR=$(dirname "$0")
active_window=$(xdotool getwindowfocus) # maybe getactivewindow
active_window_name=$(cat /proc/"$(xdotool getwindowpid "$active_window")"/comm)
#notify-send "active_window_name: $active_window_name"

# Hotkey of deepl-electron program
deepl_call_hotkey="Control_L+Shift_L+F9"

prev_win_id_file="$BASEDIR/.caller_win_id"

#debugfile="$BASEDIR/debug.log"
#xdotool getwindowpid "$(xdotool getwindowfocus)" >> "$debugfile"
#echo "$active_window" >> "$debugfile"
#echo "$active_window_name" >> "$debugfile"

# inside deepl window
if [[ $active_window_name == *deepl* ]]; then

	#deepl_window=$(xdotool getwindowfocus)

	xdotool key "Control_L+a"	sleep 0.1
	data=$(xsel)

	#notify-send 'Inside deepl'

	# change data
	#printf %s "$data" | sed 's/\n``(\w+)\n/\n```\\1\n/g'

	# move a selection to the clipboard
	printf %s "$data" | xsel --clipboard --input

	#xdotool getactivewindow windowclose # mabe windowminimize

	# before windowfocus
	xdotool key "Alt_L+F4"
	#xdotool key "Super+z"
	sleep 0.1

	xdotool windowfocus --sync "$(cat "$prev_win_id_file")"
	sleep 0.1 # !!!

	xdotool key "Shift_L+Insert"

# not deepl window
else
	#notify-send 'not deepl window'

	# save the identifier of the previous window
	printf "%d" "$active_window" > "$prev_win_id_file"
	sleep 0.1

	# Copy the selected text to the clipboard (ctrl+c)
	xdotool key "Control_L+Insert"
	sleep 0.1

	# Open DeepL
	xdotool key $deepl_call_hotkey

	# Insert from clipboard
#	sleep 0.1
	xdotool key "Control_L+A"
#	xdotool key "Control_L+V"
fi

# back to layout
[[ $orig_layout == "ru" ]] && g3kb-switch -s ru

exit 0
