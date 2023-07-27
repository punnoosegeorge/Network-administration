:'#!/bin/bash

is_prime() {
  number=$1
  if ((number < 2)); then
    return 1
  fi

  for ((i = 2; i <= number / 2; i++)); do
    if ((number % i == 0)); then
      return 1
    fi
  done

  return 0
}

read -p "Enter the lower limit: " lower
read -p "Enter the upper limit: " upper

count=0


for ((num = lower; num <= upper; num++)); do
  is_prime $num
  if (($? == 0)); then
    ((count++))
  fi
done

echo "The count of prime numbers between $lower and $upper is: $count"
'
#!/bin/bash

is_prime() {
  local num=$1


  if [ $num -lt 2 ]; then
    return 1
  fi

  for ((i = 2; i <= num / 2; i++)); do
    if ((num % i == 0)); then
      return 1
    fi
  done

  return 0
}


read -p "Enter the start of the range: " start
read -p "Enter the end of the range: " end

count=0


for ((num = start; num <= end; num++)); do
  
  if is_prime $num; then
    echo "$num is a prime number"
    ((count++))
  fi
done


echo "Total prime numbers in the range: $count"

