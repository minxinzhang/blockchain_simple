#!/usr/bin/env zsh

# Function to open a new terminal tab and run a single command
function open_new_tab_and_run_command() {
    local arg="$1"
    local port_number=$(( 6000 + $(printf "%d" "'${arg}") - $(printf "%d" "'A") ))
    local command_to_run="python3 COMP3221_A1_Routing.py ${arg} ${port_number} ${arg}config.txt"
    osascript -e "tell application \"Terminal\"" \
              -e "activate" \
              -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
              -e "delay 1" \
              -e "do script \"cd \\\"$(pwd)\\\"; ${command_to_run}\" in front window" \
              -e "end tell"
    # Return to the original tab
    osascript -e "tell application \"System Events\"" \
              -e "keystroke \"[\" using {shift down, command down}" \
              -e "end tell"
}

open_new_tab_and_run_command "$1"
