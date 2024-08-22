import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'bottom_button_card.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretationText;

  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretationText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiTextStyle,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      interpretationText,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
                onPressed: () {},
              )),
          BottomButtonCard(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              buttonTitle: 'RE CALCULATE')
        ],
      ),
    );
  }
}
