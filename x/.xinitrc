#!/usr/bin/env sh

[ -f ~/.xprofile ] && . ~/.xprofile

xinput set-prop 11 'libinput Natural Scrolling Enable' 1
xinput set-prop 11 'libinput Disable While Typing Enabled' 0

exec i3
