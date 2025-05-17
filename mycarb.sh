#!/bin/bash
# === Maha's Function: Calculate Macronutrients ===
# Protein: 20% of TDEE ÷ 4 = g
# Carbs: 50% ÷ 4 = g
# Fat: 30% ÷ 9 = g
echo ""
echo "====================================="
echo "  🍔 Calculate Macronutrients 🥗"
echo "====================================="
echo ""
PROTEIN=$(awk -v t="$TDEE" 'BEGIN { printf "%.1f", (t * 0.20) / 4 }')
CARBS=$(awk -v t="$TDEE" 'BEGIN { printf "%.1f", (t * 0.50) / 4 }')
FATS=$(awk -v t="$TDEE" 'BEGIN { printf "%.1f", (t * 0.30) / 9 }')

# Output the results
echo "BMR: $BMR kcal/day"
echo "Protein: $PROTEIN g/day"
echo "Carbs: $CARBS g/day"
echo "Fats: $FATS g/day"
