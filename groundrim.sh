clear
figlet 'Welcome to Groundrim'
echo '1. Play'
echo '2. Load Checkpoint'
echo '3. Launch <YAD> GUI version (coming soon!) (not working on mac, termux without WM and DE, ttyl, ssh or shell)'
echo '4. Update the dependecies'
echo '5. Info (Coming soon!)'
echo '6. Exit'
read -p 'What do you want to do? ' choice
if [[ $choice == '1' ]]; then
	clear
	bash ./bin/1.sh
elif [[ $choice == '3' ]] || [[ $choice == '5' ]]; then
	clear
	figlet 'I SAID COMING SOON MAN -_-'
	sleep 3s
	./groundrim.sh
elif [[ $choice == '4' ]]; then
	clear
	bash ./install-redist.sh
elif [[ $choice == '6' ]]; then
	clear
	echo 'Exiting...'
	exit 0
elif [[ $choice == '2' ]]; then
	bash ./bin/checkpointload.sh
else
	echo 'Unsupported option. Please select a valid number.'
	exit 1
fi

