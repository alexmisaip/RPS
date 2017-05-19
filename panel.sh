#!/bin/sh

source ./color.txt

function panel {
	clear
	read -p "Welcome padayan, please tell me your name ? " name
	name=${name}
	echo "You have set the final score to $1"
	echo -e "${bleu}Ready to play Shifumi $name? Here we go!${neutre}"
	echo ""
	echo -e "\\t ${vert}1 - Rock ${neutre}"
	echo -e "\\t ${vert}2 - Paper ${neutre}"
	echo -e "\\t ${vert}3 - Scissors ${neutre}"
	echo -e "\\t ${rouge}Quit ${neutre}"
}
panel $*