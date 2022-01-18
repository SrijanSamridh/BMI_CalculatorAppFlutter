import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_container.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeContainerColor = Color(0xFF1D1E33);
const appBarColor = Color(0xff01011c);
const fontColor = Color(0xFFD4D6E2);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
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
                children: const [
                  Expanded(
                      child: ReuseContainer(
                    myColor: activeContainerColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  )),
                  Expanded(
                      child: ReuseContainer(
                    myColor: activeContainerColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: "FEMALE",),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReuseContainer(
                    myColor: activeContainerColor,
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
                    myColor: activeContainerColor,
                    cardChild: Column(),
                  )),
                  Expanded(
                      child: ReuseContainer(
                    myColor: activeContainerColor,
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

