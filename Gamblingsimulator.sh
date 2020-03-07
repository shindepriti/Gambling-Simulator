#!/bin/bash -x
echo "Wel-Come To Gambling Simulator "

STAKE=100
BET=1
cash=$STAKE

function calculatePercentage() {
	MAX_CASH=$((STAKE+(50*STAKE/100)))
	MIN_CASH=$((STAKE-(50*STAKE/100)))
}
calculatePercentage

function checkLooseWin(){
	while [[ $cash -ge $MIN_CASH && $cash -le $MAX_CASH ]]
	do
		if [ $((RANDOM%2)) -eq 1 ]
		then
			cash=$((cash+BET))
		else
			cash=$((cash-BET))
		fi
	done
}
checkLooseWin

