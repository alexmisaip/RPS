#!/bin/sh

function tryagain {
	read -p "Try again ? (yes / no) " rep
	if [ "$rep" = "yes" ]; then
		clear
		source ./again.sh
		elif [ "$rep" = "no" ]; then
			echo ""
			echo "See you on Shifumi!"
		else
		echo "Please write a correct answer between 'yes' and 'no'"
		source ./try_again.sh
	fi
}
tryagain $*