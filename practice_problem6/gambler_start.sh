#/!/bin/bash
echo "gambler problem"
cash=100
bet=0
win=0

while (( $cash>0 && $cash<200 ))
do
bet=$(($bet+1))
ra=$((RANDOM%2))
if(( $ra == 1))
then
win=$(($win+1))
cash=$(($cash + 1 ))
else
cash=$(($cash - 1 ))
fi
done
echo "Bet: $bet"
echo "win: $win"
echo "cash:$cash"
