#!/bin/bash
current_date_time=$(date)
echo "Current date and time: $current_date_time"
echo $(pwd)




echo "enter a number"
read num
rev=0
while [ $num -gt 0 ]
do
     digit=$(($num %10))
     rev=$(($rev *10 + $digit))
     num=$(($num / 10))
done

echo "reverse of number is:$rev"s


echo "enter first number"
read num1
echo "enter second number"
read num2
echo "enter third number"
read num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "$num1 is largest"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo "$num2 is largest"
else
    echo "$num3 is largest"
fi




echo "enter a number"
read  num
sum=0
n=$num
while [ $n -gt 0 ]
do
   digit=$(( $n % 10 ))
   sum=$(( $sum + $digit*$digit*$digit ))
   n=$(( $n /10 ))
done
if [ $sum -eq $num ]
then
    echo "$num is amstrong "
else
    echo "$num is not amstrong"
fi



PASS='MYPASS2023'

echo "enter your password"
read password

if [ "$password" = "$PASS" ]
then
    echo "password accept"
else
    echo "incorrect password"
fi




echo "enter start number"
read start
echo "enter end number"
read end
count=0
for (( i=start;i<=end;i++ ))
do
  flag=0
  for (( j=2;j<i;j++ ))
  do
         if [ $((i%j)) -eq 0 ]
         then
             flag=1
             break
          fi
  done
  if [ $flag -eq 0 ]
  then
     echo $i
     count=$((count+1))
  fi
done
echo "the number of prime numbers are $count"

