#!/bin/bash
#=== Batoul's Function: Body Mass Index (BMI) Calculator ===
echo ""
echo "======================================="
echo "⚖️  Body Mass Index (BMI) Calculator ⚖️"
echo "======================================="
echo ""
# Convert height from centimeters to meters
height_m=$(echo "scale=2; $height / 100" | bc)
# Calculate BMI: BMI = weight (kg) / height (m)^2
bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)
echo "$name, based on height and weight, your BMI is: $bmi"
# Determine BMI category using awk
if awk "BEGIN {exit !($bmi < 18.5)}"; then
    echo "Underweight"
elif awk "BEGIN {exit !($bmi >= 18.5 && $bmi < 25)}"; then
    echo "Normal weight"
elif awk "BEGIN {exit !($bmi >= 25 && $bmi < 30)}"; then
    echo "Overweight"
else
    echo "Obese"
fi
