#/!/bin/bash
read -p "Enter the first range :" a
read -p "Enter the second range :" b


for ((j=$a;j<$b;j++))
do
        for ((i=2;i<j;i++))
        do
                if (($j%i==0))
                then
                break;
                fi
        done

        if (($j==$i))
        then
                echo "$j is prime"
#       else
#               echo "$j is not a prime"
        fi
done
