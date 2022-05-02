#/!/bin/bash -X

for (( i=0;i<10;i++))
do

randomarr[$i]=$((100+$RANDOM%900))

done

echo "the array elements : ${randomarr[@]}"

s=0
l=0
s2=1
l2=2
len=${#randomarr[*]}

max=$(($len-1))
for (( i=1;i<$len;i++ ))
do
        if(( ${randomarr[$s]}>${randomarr[$i]} ))
                then
                        s2=$s
                        s=$i
        elif(( ${randomarr[$s2]}>${randomarr[$s]} && ${randomarr[$s2]}>${randomarr[$i]} ))
                then s2=$i
                fi
        if(( ${randomarr[$l]}<${randomarr[$i]} ))
                then
                        l2=$l
                        l=$i
                elif(( ${randomarr[$l2]}<${randomarr[$i]} ))
                        then l2=$i
                fi
done
echo largest ${randomarr[$l]} smallest ${randomarr[$s]}
echo "2nd largest is : ${randomarr[$l2]}"
echo "2nd smallest is : ${randomarr[$s2]}"
