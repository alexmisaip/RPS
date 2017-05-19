#!/bin/sh
source ./color.txt
function ending {
  	echo "The score is initialize to 0 for both players."
  	source ./game.sh
	if [ "$PLAYER" != "quit" ]
  		then
  			echo -e "Score : You won ${vert}$score${neutre} time(s) / IA won ${rouge}$scoreIA${neutre} time(s)."
	else
  		echo
	fi
}
ending $*