memsave=$( cat ./.save/.main.save )
clear
read -p 'Do you want to load the main save? (y/n) ' loadq
clear
if [[ $loadq == 'y' || $loadq == 'Y' ]]; then
	if [[ $memsave == '1' ]]; then
		clear
		bash ./bin/1.sh
	elif [[ $memsave == '2' ]]; then
		clear
		bash ./bin/2.sh
	fi
elif [[ $loadq == 'n' || $loadq == 'N' ]]; then
	clear
	bash ./groundrim.sh
fi
