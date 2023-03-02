#!/bin/bash

# I learned this from this reddit post https://www.reddit.com/r/awesomewm/comments/zhhu0i/how_do_i_autostart_applicationsrun_commands_on/

run() {
  if ! pgrep -f "$1"; then
    "$@" &
  fi
}

# compositor
run "compton"

# file syncing (obsidian, wallpapers)
run "syncthing --no-browser"

# screenshots
run "flameshot"

# shound control
run "pnmixer"

# network manager
run "nm-applet"

# bluetooth
run "blueman-applet"

# run "" &
