#!/bin/bash

#Calculate TDEE
TDEE=$(awk -v b="$BMR" -v f="$factor" 'BEGIN { printf "%.2f", b * f }')
# Calculate Macronutrients
# Protein: 20% of TDEE ÷ 4 = g
# Carbs: 50% ÷ 4 = g
# Fat: 30% ÷ 9 = g
PROTEIN=$(awk -v t="$TDEE" 'BEGIN { printf "%.1f", (t * 0.20) / 4 }')
CARBS=$(awk -v t="$TDEE" 'BEGIN { printf "%.1f", (t * 0.50) / 4 }')
FATS=$(awk -v t="$TDEE" 'BEGIN { printf "%.1f", (t * 0.30) / 9 }')
# Output the results

echo "Hello $name! Based on your data:"
echo " BMR: $BMR kcal/day"
echo " TDEE (Maintenance Calories): $TDEE kcal/day"
echo " Protein: $PROTEIN g/day"
echo " Carbs: $CARBS g/day"
echo " Fats: $FATS g/day"

