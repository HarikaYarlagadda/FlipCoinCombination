#! /bin/bash -x
tailcount=0
headcount=0
for (( i=0 ; i<100 ; i++ ))
do
coin=$(( RANDOM%2 ))
if (( $coin == 0 ))
then
	echo "tails"
	(( tailcount++ ))
else
	echo "heads"
	(( headcount++ ))
fi
done
echo "no of times heads came $headcount"
echo "no of times tails came $tailcount"
headspercent=$(( (${headcount}*100)/10 ))
tailspercent=$(( (${tailcount}*100)/10 ))
echo "percentage of heads" $headspercent
echo "percentage of tails" $tailspercent
