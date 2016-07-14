#!/bin/bash

profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1} # remove leading and trailing single quotes
schema="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/"

gsettings set $schema use-theme-colors false
gsettings set $schema foreground-color 'rgb(255,255,255)'
gsettings set $schema bold-color '#000000'
gsettings set $schema bold-color-same-as-fg true
gsettings set $schema background-color 'rgb(0,0,0)'

xTerm="['rgb(0,0,0)', 'rgb(205,0,0)', 'rgb(0,205,0)', 'rgb(205,205,0)', 'rgb(30,144,255)', 'rgb(205,0,205)', 'rgb(0,205,205)', 'rgb(229,229,229)', 'rgb(76,76,76)', 'rgb(255,0,0)', 'rgb(0,255,0)', 'rgb(255,255,0)', 'rgb(70,130,180)', 'rgb(255,0,255)', 'rgb(0,255,255)', 'rgb(255,255,255)']"

gsettings set $schema palette "${xTerm}"

gsettings set $schema scrollbar-policy 'never'

