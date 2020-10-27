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
<<<<<<< HEAD
echo "percentage of heads" $headspercent
echo "percentage of tails" $tailspercent
=======
echo "heads percent is" $headspercent
echo "tails percent is" $tailspercent

declare  -A  coin;
coinHH=0;
coinTT=0;
coinHT=0;
coinTH=0;
count=0;

DoubleDictionary (){
        if [ $1 -eq 0 ]
        then
                echo "HH"
                ((coinHH++))
        elif [ $1 -eq 1 ]
	then
		echo "TT"
		((coinTT++))
	elif [ $1 -eq 2 ]
	then
		echo "HT"
		((coinHT++))
	else
                echo "TH"
                ((coinTH++))
        fi
}

while [ $count -lt 10 ]
do
        Coin=$(( $RANDOM%4 ));
        DoubleDictionary $Coin;
        ((count++))
done

echo "number of times HH combination:" ${coinHH}
echo "number of times TT combination:" ${coinTT}
echo "number of times HT combination:" ${coinHT}
echo "number of times TH combination:" ${coinTH}

percentageof_HH=$(( (${coinHH}*100)/10 ))
percentageof_TT=$(( (${coinTT}*100)/10 ))
percentageof_HT=$(( (${coinHT}*100)/10 ))
percentageof_TH=$(( (${coinTH}*100)/10 ))

echo "percentage of HH:" $percentageof_HH
echo "percentage of TT:" $percentageof_TT
echo "percentage of HT:" $percentageof_HT
echo "percentage of TH:" $percentageof_TH
>>>>>>> doubletCombination
