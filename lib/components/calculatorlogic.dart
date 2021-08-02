import 'dart:math';

class CalcLogic {
  final int height;
  final int weight;
  double _bmi;
  CalcLogic({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresults() {
    if (_bmi > 25) {
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getsuggestion() {
    if (_bmi > 25) {
      return "You have a higher than a normal body weight .Try to Excercise more";
    } else if (_bmi > 18.5) {
      return "Ypou have a Normal body Weight Good Job";
    } else {
      return "You have a lower than Normal body mass Please Eat more ";
    }
  }
}
