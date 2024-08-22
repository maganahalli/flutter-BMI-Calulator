import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  late double _bmi;
  late String _resultDescription;
  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      _resultDescription =
          'You have a higher than normal body weight. Try to exercise more.';
      return 'Over Weight';
    } else if (_bmi >= 18.5) {
      _resultDescription = ' You have normal body Weight. Good Job';
      return 'Normal';
    } else {
      _resultDescription =
          ' You have a lower than normal body Weight. You can eat More!!!!';
      return 'Under Weight';
    }
  }

  String getInterpretation() {
    return _resultDescription;
  }
}
