import 'package:flutter/material.dart';

const fontColor = Color(0xFFD4D6E2);
const labelTextStyle = TextStyle(
  fontSize: 14.0,
  color: fontColor,
);

class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.icon, required this.label})
      : super(key: key);

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle
        ),
      ],
    );
  }
}
