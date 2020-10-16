import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget childWidget;
  final Function onPress;
  ReusableCard({@required this.colour, this.childWidget, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(kCardMargin),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(kCardBorderRadius),
        ),
      ),
    );
  }
}
