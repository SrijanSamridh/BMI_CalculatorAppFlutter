import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_app/components/icon_content.dart';
import 'package:bmi_calculator_app/components/reuse_container.dart';
import 'package:bmi_calculator_app/components/bottom_button.dart';
import 'package:bmi_calculator_app/components/round_icon_button.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'results_page.dart';
import 'package:bmi_calculator_app/calculator_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  dynamic selectedGender;
  int height = 180;
  int weight = 80;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReuseContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    myColor: selectedGender == Gender.male
                        ? kActiveContainerColor
                        : kInactiveContainerColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  )),
                  Expanded(
                      child: ReuseContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    myColor: selectedGender == Gender.female
                        ? kActiveContainerColor
                        : kInactiveContainerColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReuseContainer(
                    onPress: () {},
                    myColor: kInactiveContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberStyle,
                            ),
                            const Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: kSliderActiveColor,
                            inactiveTrackColor: kSliderInactiveColor,
                            activeTrackColor: Colors.white,
                            overlayColor: const Color(0x29EB1555),
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15.0),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: kMinSliderValue,
                            max: kMaxSliderValue,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReuseContainer(
                    onPress: () {},
                    myColor: kInactiveContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: ReuseContainer(
                    onPress: () {},
                    myColor: kInactiveContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTab: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  ResultsPage(
                            bmiResult: calc.calculateBMI(),
                            resultText: calc.getResult(),
                            interpretation: calc.getInterpretation(),
                          )),
                );
              },
            ),
          ],
        ));
  }
}
