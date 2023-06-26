import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});
  int height;
  int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi > 18.5 && _bmi < 24.9) {
      return 'Normal weight';
    } else if (_bmi > 25 && _bmi < 29.9) {
      return 'Overweight';
    } else if (_bmi > 30 && _bmi < 34.9) {
      return 'Obese';
    } else {
      return 'Morbidly obese';
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'You are underweight. You may be at risk for health problems such as osteoporosis, anemia, and heart disease. Talk to your doctor about how to reach a healthy weight.';
    } else if (_bmi > 18.5 && _bmi < 24.9) {
      return 'You are at a healthy weight. Congratulations! Keep up the good work!';
    } else if (_bmi > 25 && _bmi < 29.9) {
      return 'You are overweight. You may be at risk for health problems such as high blood pressure, heart disease, and type 2 diabetes. Talk to your doctor about how to lose weight safely.';
    } else if (_bmi > 30 && _bmi < 34.9) {
      return 'You are obese. You are at a high risk for health problems such as high blood pressure, heart disease, and type 2 diabetes. Talk to your doctor about how to lose weight safely.';
    } else {
      return 'You are morbidly obese. You are at an extremely high risk for health problems such as high blood pressure, heart disease, and type 2 diabetes. Talk to your doctor about how to lose weight safely.';
    }
  }
}
