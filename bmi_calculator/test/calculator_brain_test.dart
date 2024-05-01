import 'package:flutter_test/flutter_test.dart';
import 'package:bmi_calculator/calculator_brain.dart'; // your project structure

void main() {
  group('CalculatorBrain', () {
    test('calculateBMI works correctly', () {
      final calculator = CalculatorBrain(height: 180, weight: 75);
      final bmi = calculator.calculateBMI();
      expect(bmi, '23.1');
    });

    test('getResult return correct result', () {
      final calculator1 = CalculatorBrain(height: 180, weight: 75); // BMI: 23.1
      calculator1.calculateBMI();
      expect(calculator1.getResult(), 'Normal');

      final calculator2 = CalculatorBrain(height: 180, weight: 90); // BMI: 27.8
      calculator2.calculateBMI();
      expect(calculator2.getResult(), 'Overweight');

      final calculator3 = CalculatorBrain(height: 180, weight: 50); // BMI: 15.4
      calculator3.calculateBMI();
      expect(calculator3.getResult(), 'Underweight');
    });

    test('getInterpretation returns correct interpretation', () {
      final calculator1 = CalculatorBrain(height: 180, weight: 75);
      calculator1.calculateBMI();
      expect(calculator1.getInterpretation(),
          'You have a normal body weight. Good job!');

      final calculator2 = CalculatorBrain(height: 180, weight: 90); // BMI: 27.8
      calculator2.calculateBMI();
      expect(calculator2.getInterpretation(),
          'You have a higher than normal body weight. Try to exercise more.');

      final calculator3 = CalculatorBrain(height: 180, weight: 50); // BMI: 15.4
      calculator3.calculateBMI();
      expect(calculator3.getInterpretation(),
          'You have a lower than normal body weight. You can eat a bit more.');
    });
  });
}
