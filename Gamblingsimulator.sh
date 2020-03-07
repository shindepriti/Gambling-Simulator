#!/bin/bash -x
echo "Wel-Come To Gambling Simulator "

stake=100
bet=1

function checkLooseWin(){
if [ $((RANDOM%2)) -eq 1 ]
then
	echo "WIN"
else
	echo "LOOSE"
fi
}
checkLooseWin

