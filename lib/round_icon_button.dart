import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  // const RoundIconButton({ this.onPressed})
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: kActiveContainerColor,
    );
  }
}
