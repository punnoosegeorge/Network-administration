#! /bin/bash

isPrime(){
	
	prime=0
	
	if [ $1 -eq 1 ];
	then prime=1	

	lp=$1	
	for (( i=2; i<$lp; i++ ))
	do
		if [ $(($lp%$i)) -eq 0 ];
		then prime=1
		     break
		fi
	done
	echo $prime
	
}


echo "Enter the lower limit : "
read lower

echo "Enter the upper limit : "
read upper	

echo "  "

echo "The Prime Numbers Are : "

for (( i=$lower; i<=$upper; i++ ))
do	

	isValid=$( isPrime $i )
	if [ $isValid -eq 0 ];
	then echo $i
	fi
done

		


