#!/bin/sh
function gest_error () {
	if [ -n "$1" ] && [ -z "$2" ]
		then
	  		if [[ "$1" =~ ^[1-9]+$ ]]
	  			then
	  			source ./menu.sh
			else
	 			echo "The game must be executed like this : ./shifumi [games number]"
			fi
	else
	  	echo "The game must be executed like this : ./shifumi [games number]"
	fi
}
gest_error $*