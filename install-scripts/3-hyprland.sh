#!/bin/bash

# color defination
red="\e[1;31m"
green="\e[1;32m"
yellow="\e[1;33m"
blue="\e[1;34m"
megenta="\e[1;1;35m"
cyan="\e[1;36m"
end="\e[1;0m"

# initial texts
attention="${yellow}[ ATTENTION ]${end}"
action="${green}[ ACTION ]${end}"
note="${megenta}[ NOTE ]${end}"
done="${cyan}[ DONE ]${end}"
error="${red}[ ERROR ]${end}"

# Set the name of the log file to include the current date and time
log="Install-Logs/hyprland.log"

# install script dir
ScrDir=`dirname "$(realpath "$0")"`
source $ScrDir/1-global.sh

hypr=(
hyprland
)

# Hyprland
printf "${action} Installing Hyprland Package...\n"
 for HYPR in "${hypr[@]}"; do
   install_package "$HYPR" "$log"
  done

clear
