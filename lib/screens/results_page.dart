import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/components/bottom_button.dart';
import 'package:bmi_calculator_app/constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        backgroundColor: kAppBarColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text("Your Result", style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kResultContainerColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(resultText.toUpperCase(), style: kResultTextStyle),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(interpretation,
                      textAlign: TextAlign.center, style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: "RE-CALCULATE",
              onTab: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
