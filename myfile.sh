#!/bin/bash
# === Basmah's Function: Collect Input + Calculate BMR & TDEE ===
calculate_bmr_tdee() {
    echo "============================================="
    echo "🌟 Welcome to the Daily Calorie Calculator 🌟"
    echo "============================================="
    echo ""
    
    # Get user's data
    read -p "Enter your name: " name
    read -p "Enter your gender (male/female): " gender
    read -p "Enter your age: " age
    read -p "Enter your weight in kg: " weight
    read -p "Enter your height in cm: " height

    # Prompt for activity level
    echo "activity level:"
    echo "1. Sedentary (little or no exercise)"
    echo "2. Lightly active (1–3 days/week)"
    echo "3. Moderately active (3–5 days/week)"
    echo "4. Very active (6–7 days/week)"
    echo "5. Super active (intense exercise/twice daily)"
    read -p "Enter activity level [1-5]: " activity

    # Determine activity factor based on user's input
    case $activity in
        1) factor=1.2 ;;
        2) factor=1.375 ;;
        3) factor=1.55 ;;
        4) factor=1.725 ;;
        5) factor=1.9 ;;
        *) echo "Invalid input. Defaulting to sedentary."; factor=1.2 ;;
    esac

    # Calculate BMR based on gender and user data
    if [ "$gender" = "male" ] 
    then
        BMR=$(echo "$weight $height $age" | awk '{print (10 * $1) + (6.25 * $2) - (5 * $3) + 5}')
    else
        BMR=$(echo "$weight $height $age" | awk '{print (10 * $1) + (6.25 * $2) - (5 * $3) - 161}')
    fi

    # Calculate TDEE by multiplying BMR with activity factor
    TDEE=$(echo "$BMR $factor" | awk '{print $1 * $2}')

    # Output the results
    echo ""
    echo "Hello $name! Based on your data:"
    echo "Your Total Daily Energy Expenditure (TDEE) is: $TDEE kcal/day"
}

# Call the function to run
calculate_bmr_tdee
