#!/bin/sh
source ./color.txt

function hand {
	fight="$PLAYER$COMPUTER"
	case $fight in
	11) echo -e "================= Equality =================="; score=$(($score+0)) ;;
	22) echo -e "================= Equality =================="; score=$(($score+0)) ;;
	33) echo -e "================= Equality =================="; score=$(($score+0)) ;;
	44) echo -e "================= Equality =================="; score=$(($score+0)) ;;
	55) echo -e "================= Equality =================="; score=$(($score+0)) ;;
	12) echo -e "============= ${rouge}Paper covers rock${neutre} ============="; scoreIA=$(($scoreIA+1));;
	13) echo -e "=========== ${vert}Rock crushes scissors${neutre} ==========="; score=$(($score+1)) ;;
	14) echo -e "============= ${vert}Rock crushes lizard${neutre} ============="; score=$(($score+1)) ;;
	15) echo -e "============= ${vert}Spok vaporizes rock${neutre} ============="; score=$(($score+1)) ;;
	21) echo -e "============= ${vert}Paper covers rock${neutre} ============="; score=$(($score+1)) ;;
	23) echo -e "============= ${rouge}Scissors cut paper${neutre} ============"; scoreIA=$(($scoreIA+1)) ;;
	24) echo -e "============= ${vert}Lizard eats paper${neutre} ============="; score=$(($score+1)) ;;
	25) echo -e "============= ${vert}Paper disproves Spock${neutre} ============="; score=$(($score+1)) ;;
	31) echo -e "=========== ${rouge}Rock crushes scissors${neutre} ==========="; scoreIA=$(($scoreIA+1)) ;;
	32) echo -e "============= ${vert}Scissors cut paper${neutre} ============"; score=$(($score+1)) ;;
	34) echo -e "============= ${vert}Scissors decapitates lizard${neutre} ============="; score=$(($score+1)) ;;
	35) echo -e "============= ${vert}Spock smashes scissors${neutre} ============="; score=$(($score+1)) ;;
	41) echo -e "=========== ${rouge}Rock crushes lizard${neutre} ==========="; scoreIA=$(($scoreIA+1)) ;;
	42) echo -e "============= ${vert}Lizard eats paper${neutre} ============"; score=$(($score+1)) ;;
	43) echo -e "============= ${vert}Scissors decapitates lizard${neutre} ============="; score=$(($score+1)) ;;
	45) echo -e "============= ${vert}Lizard poisons Spock${neutre} ============="; score=$(($score+1)) ;;
	51) echo -e "=========== ${rouge}Spok vaporizes rock${neutre} ==========="; scoreIA=$(($scoreIA+1)) ;;
	52) echo -e "============= ${vert}Paper disproves Spock${neutre} ============"; score=$(($score+1)) ;;
	53) echo -e "============= ${vert}Spock smashes scissors${neutre} ============="; score=$(($score+1)) ;;
	54) echo -e "============= ${vert}Lizard poisons Spock${neutre} ============="; score=$(($score+1)) ;;
	 esac
}
hand $*