import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}


class ReuseContainer extends StatelessWidget {

  const ReuseContainer({Key? key, required this.myColor}) : super(key: key);
  // const ReuseContainer({required this.myColor});
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        // color: Color(0xFF1D1E33),
        color: myColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                  Expanded(child: ReuseContainer(myColor: Color(0xFF1D1E33),)),
                  Expanded(child: ReuseContainer(myColor: Color(0xFF1D1E33),)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  Expanded(child: ReuseContainer(myColor: Color(0xFF1D1E33),)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  Expanded(child: ReuseContainer(myColor: Color(0xFF1D1E33),)),
                  Expanded(child: ReuseContainer(myColor: Color(0xFF1D1E33),)),
                ],
              ),
            ),
          ],
        ));
  }
}

