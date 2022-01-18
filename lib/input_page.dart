import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_container.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeContainerColor = Color(0xFF1D1E33);
const inactiveContainerColor = Color(0xFF111328);
const appBarColor = Color(0xff01011c);
const fontColor = Color(0xFFD4D6E2);

enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  dynamic selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                      onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseContainer(
                      myColor: selectedGender == Gender.male? activeContainerColor : inactiveContainerColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseContainer(
                      myColor: selectedGender == Gender.female? activeContainerColor : inactiveContainerColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
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
                    myColor: inactiveContainerColor,
                    cardChild: Column(),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReuseContainer(
                    myColor: inactiveContainerColor,
                    cardChild: Column(),
                  )),
                  Expanded(
                      child: ReuseContainer(
                    myColor: inactiveContainerColor,
                    cardChild: Column(),
                  )),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
            ),
          ],
        ));
  }
}
