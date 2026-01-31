#!/bin/bash

###############################################
# Required packages
###############################################
sudo apt update
sudo apt install -y bspwm sxhkd polybar rofi picom feh x11-xserver-utils xdotool feh psmisc pulseaudio-utils fonts-font-awesome fonts-dejavu fonts-noto-core wmname kitty

###############################################
# Initial configuration
###############################################
mkdir -p ~/.config/bspwm
mkdir -p ~/.config/polybar/scripts
mkdir -p ~/.config/polybar/scripts/themes
mkdir -p ~/.config/polybar/fonts
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/env
touch ~/.config/env/target
mkdir -p ~/.config/wallpaper
cp cfg/wallpaper/pic.jpg ~/.config/wallpaper

###############################################
# polybar configuration files
###############################################

# Copy main config files
cp cfg/polybar/bitwiz4rd.ini cfg/polybar/colors.ini cfg/polybar/workspaces.ini ~/.config/polybar/
cp cfg/polybar/fonts/HurmitNerdFontComplete_Mono.otf ~/.config/polybar/fonts/

# Script: Startup Launcher
cp cfg/polybar/launch.sh ~/.config/polybar/ && chmod +x ~/.config/polybar/launch.sh

# Script: eth0 Status
cp cfg/polybar/scripts/eth0_status.sh ~/.config/polybar/scripts/ && chmod +x ~/.config/polybar/scripts/eth0_status.sh

# Script: tun0 Status
cp cfg/polybar/scripts/tun0_status.sh ~/.config/polybar/scripts/ && chmod +x ~/.config/polybar/scripts/tun0_status.sh

# Script: Target IP
cp cfg/polybar/scripts/target_ip.sh ~/.config/polybar/scripts/ && chmod +x ~/.config/polybar/scripts/target_ip.sh

# Script: PowerMenu Alt
cp cfg/polybar/scripts/themes/powermenu_alt.rasi ~/.config/polybar/scripts/themes/
cp cfg/polybar/scripts/powermenu_alt.sh ~/.config/polybar/scripts/ && chmod +x ~/.config/polybar/scripts/powermenu_alt.sh

###############################################
# bspwmrc configuration files
###############################################
cp cfg/bspwm/bspwmrc ~/.config/bspwm/bspwmrc && chmod +x ~/.config/bspwm/bspwmrc
sudo cp cfg/bspwm/xsessions/bspwm.desktop /usr/share/xsessions/bspwm.desktop

###############################################
# sxhkd configuration files
###############################################
cp cfg/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc

# List dirs to verify
echo ""
echo "Installation complete. Verifying directories:"
echo "~/.config/bspwm:"
ls -la ~/.config/bspwm
echo ""

echo "~/.config/polybar:"
ls -la ~/.config/polybar
echo ""

echo "~/.config/polybar/scripts:"
ls -la ~/.config/polybar/scripts
echo ""

echo "~/.config/polybar/scripts/themes:"
ls -la ~/.config/polybar/scripts/themes
echo ""

echo "~/.config/polybar/fonts:"
ls -la ~/.config/polybar/fonts
echo ""

echo "~/.config/sxhkd:"
ls -la ~/.config/sxhkd
echo ""

echo "~/.config/wallpaper:"
ls -la ~/.config/wallpaper
echo ""

echo "/usr/share/xsessions/:"
ls -la /usr/share/xsessions/
echo ""
