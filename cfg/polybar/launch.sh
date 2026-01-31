#!/usr/bin/env sh

###############################################
# Terminate already running bar instances
###############################################
killall -q polybar

###############################################
## Wait until the processes have been shut down
###############################################
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

###############################################
## Launch polybar bars
###############################################
polybar decorator1 -c ~/.config/polybar/bitwiz4rd.ini &             # Decorator         | Left bar
polybar datetime -c ~/.config/polybar/bitwiz4rd.ini &               # Datetime          | Left bar
polybar eth0_status -c ~/.config/polybar/bitwiz4rd.ini &            # EthIP             | Left bar
polybar tun0_status -c ~/.config/polybar/bitwiz4rd.ini &            # tun0 IP           | Left bar
polybar target_ip -c ~/.config/polybar/bitwiz4rd.ini &              # target IP         | Left bar

polybar spaces -c ~/.config/polybar/bitwiz4rd.ini &                 # Spaces            | Center bar

polybar sound -c ~/.config/polybar/bitwiz4rd.ini &                  # Sound             | Right bar
polybar powermenu_alt -c ~/.config/polybar/bitwiz4rd.ini &          # PowerMenu         | Right bar

