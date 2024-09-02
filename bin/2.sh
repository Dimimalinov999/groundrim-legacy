echo '2' > ./.save/.main.save 
clear
echo 'They decided to take the easy route to earth, but how...'
echo '1. Use a time machine'
echo '2. Use the ultimate spaceship'
echo '3. Accept their faith (back to menu)'
read -p 'Make your choice: ' ch2
if [[ $ch2 == '1' ]]; then
	clear
	echo 'how tf you gonna use a time machine to get to earth >:|'
	read -p "Press any key to restart..."
	bash ./bin/2.sh
elif [[ $ch2 == '2' ]]; then
	bash ./bin/3.sh
elif [[ $ch2 == '3' ]]; then
	clear
	echo 'Are you that soft man?'
	exit 0
fi
