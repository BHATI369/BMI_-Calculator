import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  double _bmi;
  CalculatorBrain({this.weight, this.height});

  String calculateBmi() {
     _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25) {
      return 'Your have a higher than Normal body Weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight! Good Job';
    } else {
      return 'You have a lower than Normal body Weight, You eat more';
    }
  }
}
