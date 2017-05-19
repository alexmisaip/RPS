#!/bin/sh
source ./color.txt
function game_spoke {
	score=0
	scoreIA=0
	while [ $score -lt $1 ]; do
		COMPUTER=$(((RANDOM%3)+1))
		read -p "Your choice : " PLAYER
		if [ -z "$PLAYER" ]; then
			echo "Please enter a number between 1 and 3."
		elif [ $PLAYER != "quit" ]; then
				if [ $PLAYER = "1" ] || [ $PLAYER = "2" ] || [ $PLAYER = "3" ] || [ $PLAYER = "4" ] || [ $PLAYER = "5" ]; then
				  	source ./spoke.sh
				elif [[ -z "$PLAYER" ]]; then
				  	echo "Please enter a number between 1 and 3."
				elif [[ $PLAYER =~ ^[1-9]+$ ]]; then
					echo "Please enter a number between 1 and 3."
				elif [[ $PLAYER > 0 || $PLAYER < 6 ]]; then
					echo "Please enter a number between 1 and 3."
				fi
		else
			score=$1
			echo "You decided to leave the game."
		fi
		if [[ $PLAYER != "quit" && -n "$PLAYER" ]]; then
			echo -e "Score : You won ${vert}$score${neutre} time(s) / IA won ${rouge}$scoreIA${neutre} time(s)."
		else
		  echo ""
		fi
	done
}
game_spoke $*