import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  BottomButton({super.key, required this.onTap, required this.buttonTitle});

  void Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kBottomContainerColour,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
