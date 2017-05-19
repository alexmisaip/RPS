#!/bin/bash

source ./color.txt

function menu {
	echo -e "${bleu}Welcome in the main menu of Rock Paper Scissors !${neutre}"
	echo -e "${vert}	1 - Original game (solo)${neutre}"
	echo -e "${vert}	2 - Rock paper scissors lizard spock${neutre}"
	read -p "Choose your game mode : " choix
	echo ""
	if [[ $choix = "1" ]]; then
		source ./panel.sh
		source ./ending.sh
		source ./try_again.sh
	elif [[ $choix = "2" ]]; then
		source ./panel_spoke.sh
		source ./ending_spoke.sh
		source ./try_again.sh
	else 
		echo "Please enter a number between 1 and 2."
	fi
}
menu $*