#!/bin/bash
echo "Flip the Coin"
coin=$(( $RANDOM%2 ))

if [ $coin -eq 0 ]
then
	echo "Heads win"
else
	echo "Tails win"
fi

declare -A coin
headscount=0
tailscount=0
a=0

Singlet ()
{
	if [ $1 -eq 0 ]
	then
		echo "Heads"
		((headcount++))
	else
		echo "Tails"
		((tailcount++))
	fi
}

while [ $a -le 10 ]
do
	FlipCoin=$(( $RANDOM%2 ))
	Singlet $FlipCoin
	((a++))
done
echo "no of times heads came $headcount"
echo "no of times tails came $tailcount"
headspercent=$(( (${headcount}*100)/10 ))
tailspercent=$(( (${tailcount}*100)/10 ))
echo "percentage of heads" $headspercent
echo "percentage of tails" $tailspercent
