import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_container.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  dynamic selectedGender;
  int height = 180;

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
                            Text( height.toString(),
                              style: kNumberStyle,
                            ),
                            const Text('cm',style: kLabelTextStyle,),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 180.0,
                          max: 220.0, onChanged: (double value) {  },
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
                    cardChild: Column(),
                  )),
                  Expanded(
                      child: ReuseContainer(
                    onPress: () {},
                    myColor: kInactiveContainerColor,
                    cardChild: Column(),
                  )),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              height: kBottomContainerHeight,
              width: double.infinity,
            ),
          ],
        ));
  }
}
