import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          inactiveTrackColor: Color(0xff8d8e98),
          activeTrackColor: Color(0xffffffff),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          thumbColor: Color(0xffeb1555),
          overlayColor: Color(0x45eb1555),
        ),
      ),
      home: InputPage(),
    );
  }
}
