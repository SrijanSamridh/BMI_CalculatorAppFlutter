import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/components/bottom_button.dart';
import 'package:bmi_calculator_app/constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
          const Expanded(
            child: Text("Your Result", style: kTitleTextStyle),
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
                children: const [
                  Text("Normal", style: kResultTextStyle),
                  Text("22.0", style: kBMITextStyle),
                  Text(
                      "Your BMI result is normal and great. You are doing Great.",
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle),
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
