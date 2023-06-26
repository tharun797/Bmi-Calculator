import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {super.key,
      required this.onPressed,
      required this.onLongPress,
      required this.onLongPressEnd,
      required this.icon});

  Function()? onPressed;
  Function()? onLongPress;
  Function(dynamic)? onLongPressEnd;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      onLongPressEnd: onLongPressEnd,
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: kSecondaryColour,
          borderRadius: BorderRadius.circular(50),
        ),
        constraints: const BoxConstraints.tightFor(width: 60.0, height: 60.0),
        child: icon,
      ),
    );
  }
}
