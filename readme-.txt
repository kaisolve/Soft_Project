The system must accept two numerical inputs:
 height in centimeters and weight in kilograms.
Both inputs must be positive integers.

Functional Requirements:
1. The system must calculate BMI using the formula.

BMI = weight/ (height / 100)^2

1. The BMI value must be rounded to one decimal place.

2. BMI Classification:

Overweight: BMI >= 25
O Normal: 18.5 < BMI < 25
• Underweight: BMI <= 18.5
3. Recommendations:
。 Overweight: Advise more exercise.
о Normal: Positive reinforcement.
• Underweight: Suggest eating more.
Non-Functional Requirements (NFR):
1. Performance: 

• The system must perform BMI calculation and classification within 2 seconds of receiving input.

2. Accuracy:

The system must provide accurate BMI calculations with a 99.9% uptime.
3. Interface:

• The system must provide a clear and intuitive interface for inputting height and weight.
• The results and advice must be displayed in an easily understandable format.

4. Maintainability:
• The system must be maintainable with clear documentation and modular code to facilitate updates and improvements.

5. Accessibility:
The system must be accessible, supporting users with different abilities and providing alternative text for screen readers.

6. Data Security:
• Any personal data entered must be handled securely and in compliance with data protection regulations.