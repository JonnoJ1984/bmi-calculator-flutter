import 'package:flutter/material.dart';

import 'file:///C:/Users/jonat/AndroidStudioProjects/bmi-calculator-flutter/bmi-calculator-flutter/lib/components/bottom_button.dart';

import '../components/constants.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String result;
  final String category;
  final String comment;

  ResultsPage(
      {@required this.result, @required this.category, @required this.comment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
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
                    result,
                    style: kNumberTextStyle.copyWith(fontSize: 100.0),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      comment,
                      style: kLabelTextStyle.copyWith(fontSize: 22.0),
                    ),
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
