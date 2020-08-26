import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String getResult() {
    _bmi = (weight / pow((height / 100), 2));
    return _bmi.toStringAsFixed(1);
  }

  String getCategory() {
    String result;
    if (_bmi >= 25) {
      result = 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      result = 'NORMAL';
    } else {
      result = 'UNDERWEIGHT';
    }
    return result;
  }

  String getComment() {
    String result;
    if (_bmi >= 25) {
      result =
          'You have a higher than normal body weight in relation to your size.  Consider adjusting your diet or increasing the activity in your lifestyle.';
    } else if (_bmi > 18.5) {
      result =
          'You have what is considered a normal body weight.  Keep trying to remain healthy.';
    } else {
      result =
          'You have a lower than expected body weight.  Make sure you\'re eating sufficient amounts of food.';
    }
    return result;
  }
}
