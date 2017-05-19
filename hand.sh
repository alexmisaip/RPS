#!/bin/sh
source ./color.txt

function hand {
	fight="$PLAYER$COMPUTER"
	case $fight in
	11) echo -e "================= Equality =================="; score=$(($score+0)) ;;
	33) echo -e "================= Equality =================="; score=$(($score+0)) ;;
	22) echo -e "================= Equality =================="; score=$(($score+0)) ;; 
	12) echo -e "============= ${rouge}Paper covers rock${neutre} ============="; scoreIA=$(($scoreIA+1));;
	13) echo -e "=========== ${vert}Rock crushes scissors${neutre} ==========="; score=$(($score+1)) ;;
	21) echo -e "============= ${vert}Paper covers rock${neutre} ============="; score=$(($score+1)) ;;
	23) echo -e "============= ${rouge}Scissors cut paper${neutre} ============"; scoreIA=$(($scoreIA+1)) ;;
	31) echo -e "=========== ${rouge}Rock crushes scissors${neutre} ==========="; scoreIA=$(($scoreIA+1)) ;;
	32) echo -e "============= ${vert}Scissors cut paper${neutre} ============"; score=$(($score+1)) ;;
	 esac
}
hand $*