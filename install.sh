#!/bin/bash

###############################################
# Required packages
###############################################
sudo apt update
sudo apt install -y bspwm sxhkd polybar rofi picom feh x11-xserver-utils xdotool feh psmisc pulseaudio-utils fonts-font-awesome fonts-dejavu fonts-noto-core wmname kitty

###############################################
# Initial configuration
###############################################
mkdir -p ~/.config/{bspwm,polybar/scripts/themes,sxhkd,wallpaper}
cp -f cfg/wallpaper/* ~/.config/wallpaper/

###############################################
# polybar configuration files
###############################################
cp -fr cfg/polybar/* ~/.config/polybar/
cp -f cfg/polybar/launch.sh ~/.config/polybar/ && chmod +x ~/.config/polybar/launch.sh
cp -f cfg/polybar/scripts/* ~/.config/polybar/scripts/
chmod +x ~/.config/polybar/scripts/*

###############################################
# bspwmrc configuration files
###############################################
cp -f cfg/bspwm/bspwmrc ~/.config/bspwm/ && chmod +x ~/.config/bspwm/bspwmrc
cp -f cfg/bspwm/scripts/* ~/.config/bspwm/scripts/ 2>/dev/null || true
chmod +x ~/.config/bspwm/scripts/*
sudo cp -f cfg/bspwm/bspwm.desktop /usr/share/xsessions/

###############################################
# sxhkd configuration files
###############################################
cp -f cfg/sxhkd/* ~/.config/sxhkd/

###############################################
# Git Config
###############################################
git config --global user.name "BitWiz4rd"
git config --global user.email "bitwiz4rd@protonmail.com"

