import 'dart:math';
import 'package:flutter/material.dart';

class BmiBrain {
  BmiBrain({this.height, this.weight});
  final int height, weight;
  double _bmi;

  String CalculateBMI() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String Conditions() {
    if (_bmi >= 30) {
      return "OBESE";
    } else if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String Statements() {
    if (_bmi >= 30) {
      return "You need to follow proper diet plan and do Workout daily.";
    } else if (_bmi >= 25) {
      return "You have higher weight.\nTry to do some exercise to burn excessive calories.";
    } else if (_bmi >= 18.5) {
      return "Your have normal body weight.\nKeep it Up!";
    } else {
      return "Your weight is lower than normal body weigth.\nYou can eat more...XD.";
    }
  }

  Color ConditionColor() {
    if (_bmi >= 30) {
      return Colors.red;
    } else if (_bmi >= 25) {
      return Colors.yellow;
    } else if (_bmi >= 18.5) {
      return Colors.greenAccent;
    } else {
      return Colors.blue;
    }
  }
}
