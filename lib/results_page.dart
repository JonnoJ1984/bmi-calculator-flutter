import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final category = 'OVERWEIGHT';
  final double result = 0.0;
  final String comment = 'This is your comment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: UnconstrainedBox(
        child: Text(
          'BMI CALCULATOR',
        ),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Center(
                child: Text(
                  'Results',
                  style: kLabelTextStyle.copyWith(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    category,
                    style: kLabelTextStyle.copyWith(color: Color(0xff24d876)),
                  ),
                  Text(
                    result.toString(),
                    style: kNumberTextStyle.copyWith(fontSize: 100.0),
                  ),
                  Text(
                    comment,
                    style: kLabelTextStyle.copyWith(fontSize: 22.0),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
