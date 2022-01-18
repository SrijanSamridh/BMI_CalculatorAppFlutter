import 'package:flutter/material.dart';

class ReuseContainer extends StatelessWidget {
  const ReuseContainer(
      {Key? key, required this.myColor, required this.cardChild})
      : super(key: key);
  // const ReuseContainer({@required this.myColor, this.cardChild});
  final Color myColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        // color: Color(0xFF1D1E33),
        color: myColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}

