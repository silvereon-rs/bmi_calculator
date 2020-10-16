import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'reusable_card.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.condition,
      @required this.statement,
      @required this.colour});
  final Color colour;
  final String bmiResult, condition, statement;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              "Your Result",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ReusableCard(
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    condition,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colour,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style:
                        TextStyle(fontSize: 90.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      statement,
                      style: kTextStyle,
                    ),
                  ),
                ],
              ),
              colour: kActiveCardColor,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          BottomButton(
            textPrint: "RE-CALCULATE",
            OnTapping: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
