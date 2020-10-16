import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String textPrint;
  final Function OnTapping;

  const BottomButton({@required this.textPrint, @required this.OnTapping});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTapping,
      child: Container(
        child: Center(
          child: Text(
            textPrint,
            style: kButtonTextStyle,
          ),
        ),
        color: Color(0xFFED1555),
        width: double.infinity,
        height: kBottomButtonHeight,
      ),
    );
  }
}
