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
declare  -A  coin;
coinHHH=0;
coinHTT=0;
coinHTH=0;
coinHHT=0;
coinTTT=0;
coinTHH=0;
coinTHT=0;
coinTTH=0;
count=0;

TripleDictionary (){
        if [ $1 -eq 0 ]
        then
                echo "HHH"
                ((coinHHH++))
        elif [ $1 -eq 1 ]
        then
                echo "HTT"
                ((coinHTT++))
        elif [ $1 -eq 2 ]
        then
                echo "HTH"
                ((coinHTH++))
        elif [ $1 -eq 3 ]
        then
                echo "HHT"
                ((coinHTT++))
        elif [ $1 -eq 4 ]
        then
                echo "TTT"
                ((coinTTT++))

	elif [ $1 -eq 5 ]
        then
                echo "THH"
                ((coinTHH++))
        elif [ $1 -eq 6 ]
        then
                echo "THT"
                ((coinTHT++))

	else
                echo "TTH"
                ((coinTTH++))
        fi
}

while [ $count -lt 10 ]
do
        Coin=$(( $RANDOM%8 ));
        TripleDictionary $Coin;
        ((count++))
done

echo "number of times HHH combination:" ${coinHHH}
echo "number of times HTT combination:" ${coinHTT}
echo "number of times HTH combination:" ${coinHTH}
echo "number of times HHT combination:" ${coinHHT}
echo "number of times TTT combination:" ${coinTTT}
echo "number of times THH combination:" ${coinTHH}
echo "number of times THT combination:" ${coinTHT}
echo "number of times TTH combination:" ${coinTTH}

percentageof_HHH=$(( (${coinHHH}*100)/10 ))
percentageof_HTT=$(( (${coinHTT}*100)/10 ))
percentageof_HTH=$(( (${coinHTH}*100)/10 ))
percentageof_HHT=$(( (${coinHHT}*100)/10 ))
percentageof_TTT=$(( (${coinTTT}*100)/10 ))
percentageof_THH=$(( (${coinTHH}*100)/10 ))
percentageof_THT=$(( (${coinTHT}*100)/10 ))
percentageof_TTH=$(( (${coinTTH}*100)/10 ))

echo "percentage of HHH:" $percentageof_HHH
echo "percentage of HTT:" $percentageof_HTT
echo "percentage of HTH:" $percentageof_HTH
echo "percentage of HHT:" $percentageof_HHT
echo "percentage of TTT:" $percentageof_TTT
echo "percentage of THH:" $percentageof_THH
echo "percentage of THT:" $percentageof_THT
echo "percentage of TTH:" $percentageof_TTH
