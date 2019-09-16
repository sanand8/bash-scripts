#!/bin/bash
echo "How many numbers u want to calculate?"
read n

i=0
s=0
echo "Input the numbers"

while [ "$i" -lt "$n" ]
do
    read x

    s=$(( $s + $x ))
    i=$(( $i + "1"))
done

y=$(( $s / $n ))

#echo $y

#printf "%.3f\n" $(bc -l <<< '$s / $n' )
#restricting the number to only three digits


printf "%.3f" $(echo $s/$n | bc -l)
