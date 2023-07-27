#!/bin/bash

addition() {
  result=$((num1 + num2))
  echo "Result of addition: $result"
}


subtraction() {
  result=$((num1 - num2))
  echo "Result of subtraction: $result"
}


multiplication() {
  result=$((num1 * num2))
  echo "Result of multiplication: $result"
}

division() {
  result=$((num1 / num2))
  echo "Result of division: $result"
}

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice: " choice

case $choice in
  1)
    addition
    ;;
  2)
    subtraction
    ;;
  3)
    multiplication
    ;;
  4)
    division
    ;;
  *)
    echo "Invalid choice."
    ;;
esac

