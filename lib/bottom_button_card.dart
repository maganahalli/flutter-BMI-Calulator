import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButtonCard extends StatelessWidget {
  final String buttonTitle;
  final Function() onPressed;
  BottomButtonCard({required this.buttonTitle, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
