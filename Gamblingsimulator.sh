#!/bin/bash -x
echo "Wel-Come To Gambling Simulator "

declare -A amount

#CONSTANTS
STAKE=100
BET=1

#Variable
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
	totalCash=$((cash-STAKE))
	echo $totalCash
}

function getTotalAmount() {
	for ((day=1;day<=20;day++))
	do
		totalAmount=$((totalAmount + $(checkLooseWin) ))
		amount[day$day]=$totalAmount
	done
	if [ $totalAmount -gt 0 ]
	then
		echo "Total Amount Win:" $totalAmount
	else
		echo "Total Amount Loose:" $totalAmount
	fi	
}
getTotalAmount

