# Daily Calorie Needs Calculator

## Project Idea
This Bash script calculates the daily calorie needs for a person based on personal data and activity level. It uses the Mifflin-St Jeor equation to calculate the Basal Metabolic Rate (BMR), then multiplies it by an activity factor to estimate the total daily calorie requirement.

## Input Data
The script asks the user to enter:
- Name
- Age
- Weight (in kilograms)
- Height (in centimeters)
- Gender (male or female)
- Activity level (from 1 to 4)

## Formula Used

**Mifflin-St Jeor Equation:**

- For women:  
  `BMR = 10 * weight + 6.25 * height - 5 * age - 161`

- For men:  
  `BMR = 10 * weight + 6.25 * height - 5 * age + 5`

**Activity levels:**
1. Sedentary (little or no exercise) → `1.2`  
2. Lightly active (light exercise/sports 1-3 days/week) → `1.375`  
3. Moderately active (moderate exercise/sports 3-5 days/week) → `1.55`  
4. Very active (hard exercise/sports 6-7 days a week) → `1.725`

Total Calories = `BMR * Activity Factor`

## Requirements
- Bash shell environment (Linux, macOS, or Git Bash on Windows)
- `bc` command-line calculator (installed by default on most systems)

## How to Run
1. Open the terminal and navigate to the project directory.
2. Make sure the script is executable:

   ```bash
   chmod +x calories.sh
   To run the script, type:
    ./calories.sh


