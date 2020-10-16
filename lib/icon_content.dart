import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  final IconData iconname;
  final String text;
  GenderCard({this.iconname, this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconname,
          size: kCardIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
