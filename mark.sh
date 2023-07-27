#!/bin/bash

read -p "Enter the mark for subject 1: " mark1
read -p "Enter the mark for subject 2: " mark2
read -p "Enter the mark for subject 3: " mark3

# Calculate the average
average=$(( (mark1 + mark2 + mark3) / 3 ))

echo "Average mark: $average"

# Assign grades based on the average
if ((average < 40)); then
  echo "Grade: Fail"
elif ((average < 60)); then
  echo "Grade: P"
elif ((average < 80)); then
  echo "Grade: B"
elif ((average < 90)); then
  echo "Grade: A"
else
  echo "Grade: S"
fi

