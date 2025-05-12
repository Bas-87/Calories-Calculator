# Daily Calorie Needs Calculator

## Project Idea
This Bash script calculates the daily calorie needs for a person based on personal data and activity level.  
It uses the **Mifflin-St Jeor equation** to calculate the Basal Metabolic Rate (BMR), then multiplies it by an activity factor to estimate the **Total Daily Energy Expenditure (TDEE)**.  
Additional features include **BMI calculation**, **macronutrient recommendations**, **meal tracking**, and **result saving** for future reference.

---

## Input Data
The script asks the user to enter:
- Name
- Age
- Weight (in kilograms)
- Height (in centimeters)
- Gender (male or female)
- Activity level (from 1 to 5)
- (Optional) Meals and calorie amounts

---

## Features
- 🔸 Calculates **BMR** and **TDEE** using personal info and activity level
- 🔸 Calculates **BMI** and provides health classification (underweight, normal, overweight, obese)
- 🔸 Suggests **daily macronutrient goals** (Protein, Carbohydrates, Fat)
- 🔸 Allows the user to **track daily meal intake**
- 🔸 Compares daily intake with total need
- 🔸 **Saves results** to a timestamped report file


---

## Formula Used

### 🔹 Mifflin-St Jeor Equation

- For women:  
  `BMR = 10 * weight + 6.25 * height - 5 * age - 161`

- For men:  
  `BMR = 10 * weight + 6.25 * height - 5 * age + 5`

### 🔹 Activity levels and Factors

| Level | Description                               | Factor |
|-------|-------------------------------------------|--------|
| 1     | Sedentary (little or no exercise)         | 1.2    |
| 2     | Lightly active (1–3 days/week)            | 1.375  |
| 3     | Moderately active (3–5 days/week)         | 1.55   |
| 4     | Very active (6–7 days/week)               | 1.725  |
| 5     | Super active (intense training / 2x day)  | 1.9    |

**Total Calories (TDEE) = BMR × Activity Factor**

---

### 🔹 BMI (Body Mass Index)

`BMI = weight (kg) / (height in meters)^2`

**Classification:**
- Underweight: BMI < 18.5
- Normal weight: 18.5 ≤ BMI < 25
- Overweight: 25 ≤ BMI < 30
- Obese: BMI ≥ 30

---

### 🔹 Macronutrient Distribution (based on TDEE)

| Macronutrient | Percentage | Grams formula                     |
|---------------|------------|-----------------------------------|
| Protein       | 20%        | `(TDEE * 0.2) / 4`                |
| Carbohydrates | 50%        | `(TDEE * 0.5) / 4`                |
| Fat           | 30%        | `(TDEE * 0.3) / 9`                |

---

## How to Run

1. Open your terminal and navigate to the project directory.
2. Make sure the script is executable:

```bash
chmod +x calories.sh


Run the script:
./calories.sh




