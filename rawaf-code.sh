#!/bin/bash
#=== Rawaf's Function:Track daily calories===
echo ""
echo "======================================="
echo "     🔹 Track daily calories 🔹"
echo "======================================="
echo ""
total_intake=0

while true; do
    read -p "Do you want to add a meal/snack? (yes/no): " choice
    if [ "$choice" = "no" ] 2>/dev/null 
    then
        break
    fi
    read -p "Enter the number of calories for this meal: " calories
    total_intake=$(echo "$total_intake + $calories" | bc)
    echo "Current total intake: $total_intake kcal"
done

#Compared to required calories
echo ""
echo "=== Intake Summary ==="
echo "Total consumed today: $total_intake kcal"
echo "Daily need: $TDEE kcal"

if [ $(echo $total_intake > $TDEE | bc -l) ]; then
    echo "You exceeded your daily calorie limit!"
elif [ $(echo $total_intake < $TDEE | bc -l) ]; then
    echo "You're still under your daily calorie needs."
else
    echo "You met your exact daily requirement!"
fi

#Save results

filename="calorie_report_$(date +%Y%m%d_%H%M%S).txt"
{ 
    echo "Name: $name"
    echo "Gender: $gender"
    echo "Weight: $weight kg"
    echo "Height: $height cm"
    echo "Age: $age"
    echo "Activity Factor: $factor"
    echo "BMR: $BMR kcal"
    echo "TDEE: $TDEE kcal"
    echo "BMI: $bmi"
    echo "Macros: Protein= $PROTEIN g, Carbs= $CARBS g, Fat= $FATS g"
    echo "Calories Consumed: $total_intake kcal"
} > "$filename"

echo ""
echo "Results saved to $filename"
