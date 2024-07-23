clear
echo 'They fought hard, but not hard enough, the Groundrim universe has been destroyed! They had to find a way out of it...'
echo
echo 'They desided to...'
echo '1. head to earth'
echo '2. Try to bring back the groundrim universe'
echo '3. go to ???'
echo '4. go back to the main menu'
read -p 'Make your choice: ' pch
if [[ $pch == '1' ]]; then
	./bin/2.sh
elif [[ $pch == '2' ]]; then
	clear
	figlet 'YOU DIED'
	read -p 'Press any key to restart or use ctrl+c to quit...'
	./1.sh
elif [[ $pch == '3' ]]; then
	clear
	figlet 'what?'
	read -p 'Press any key to restart or use ctrl+c to quit...'
	./1.sh
elif [[ $pch == '4' ]]; then
	clear
	./groundrim.sh
fi
