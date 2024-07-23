#!/bin/bash

echo 'installing the required dependencies...'
echo 'please select your current linux distro'
echo '1. Arch/Manjaro (pacman)'
echo '2. Termux (pkg)'
echo '3. Debian/Ubuntu/Kali/PopOS/Mint (apt)'
read -p 'enter the number of your distro: ' distro

if [[ $distro == '1' ]]; then
    sudo pacman -S figlet
elif [[ $distro == '2' ]]; then
    pkg install figlet
elif [[ $distro == '3' ]]; then
    sudo apt install figlet
else
    echo 'Unsupported option. Please select a valid number.'
    exit 1
fi

