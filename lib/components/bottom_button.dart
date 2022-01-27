import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.onTab, required this.buttonTitle}) : super(key: key);

  final String buttonTitle;
  final void Function() onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child:  Center(
          child: Text(buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}

