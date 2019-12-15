#!/usr/bin/env sh

[ -f ~/.xprofile ] && . ~/.xprofile

xinput set-prop 11 303 1
xinput set-prop 11 327 0

exec i3
