import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpolation() {
    if (_bmi >= 25) {
      return 'You have a higher than a normal body weight, Try to do some Exercise';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight, Good Job';
    } else {
      return 'You have a lower than a normal body weight, Try to Eat a bit more';
    }
  }
}
