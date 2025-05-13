#!/bin/bash
echo "=== Body Mass Index (BMI) Calculator ==="

# Convert height from centimeters to meters
height_m=$(echo "scale=2; $height / 100" | bc)
# Calculate BMI: BMI = weight (kg) / height (m)^2
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

echo "$name, based on height and weight, your BMI is: $bmi"

# Determine BMI category
if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "Underweight"
elif (( $(echo "$bmi >= 18.5 && $bmi < 25" | bc -l) )); then
    echo "Normal weight"
elif (( $(echo "$bmi >= 25 && $bmi < 30" | bc -l) )); then
    echo "Overweight"
else
    echo "Obese"
fi
