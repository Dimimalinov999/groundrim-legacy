clear
echo 'Installing figlet and yad...'

# Check if pacman is available (Arch/Manjaro)
if command -v pacman &> /dev/null; then
    sudo pacman -S figlet yad --noconfirm
    clear
    echo 'You can launch groundrim now :)'
    read -p 'Launch Groundrim? (y/n) ' ynlaunch
    if [[ $ynlaunch == 'y' ]] || [[ $ynlaunch == 'Y' ]]; then
    	clear
    	bash ./groundrim.sh
    elif [[ $ynlaunch == 'n' ]] || [[ $ynlaunch == 'N' ]]; then
    	clear
    	exit 0
    else
    	clear
    	echo 'Invalid Option, Exiting...'
    	exit 0
    fi
fi

# Check if pkg is available (Termux)
if command -v pkg &> /dev/null; then
    pkg install figlet yad -y
    clear
    echo 'You can launch groundrim now :)'
    read -p 'Launch Groundrim? (y/n) ' ynlaunch
    if [[ $ynlaunch == 'y' ]] || [[ $ynlaunch == 'Y' ]]; then
    	clear
    	bash ./groundrim.sh
    elif [[ $ynlaunch == 'n' ]] || [[ $ynlaunch == 'N' ]]; then
    	clear
    	exit 0
    else
    	clear
    	echo 'Invalid Option, Exiting...'
    	exit 0
    fi
fi

# Check if apt-get is available (Debian/Ubuntu/Kali/PopOS/Mint)
if command -v apt &> /dev/null; then
    sudo apt install figlet yad -y
    clear
    echo 'You can launch groundrim now :)'
    read -p 'Launch Groundrim? (y/n) ' ynlaunch
    if [[ $ynlaunch == 'y' ]] || [[ $ynlaunch == 'Y' ]]; then
    	clear
    	bash ./groundrim.sh
    elif [[ $ynlaunch == 'n' ]] || [[ $ynlaunch == 'N' ]]; then
    	clear
    	exit 0
    else
    	clear
    	echo 'Invalid Option, Exiting...'
    	exit 0
    fi
fi

# If none of the above package managers are found
clear

exit 0

