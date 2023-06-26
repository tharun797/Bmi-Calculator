import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

// ignore: must_be_immutable
class MoreLessCard extends StatelessWidget {
  MoreLessCard(
      {super.key,
      required this.name,
      required this.value,
      required this.onPlusPressed,
      required this.onPlusLongPressed,
      required this.onPlusLongPressedEnd,
      required this.onMinusPressed,
      required this.onMinusLongPressed,
      required this.onMinusLongPressedEnd});

  String name;
  String value;
  Function()? onPlusPressed;
  Function()? onPlusLongPressed;
  Function(dynamic)? onPlusLongPressedEnd;
  Function()? onMinusPressed;
  Function()? onMinusLongPressed;
  Function(dynamic)? onMinusLongPressedEnd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 100,
        decoration: kBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              name,
              style: GoogleFonts.pacifico(
                  color: Colors.grey[800],
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 50, color: Colors.grey[800]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIconButton(
                  onPressed: onPlusPressed,
                  onLongPress: onPlusLongPressed,
                  onLongPressEnd: onPlusLongPressedEnd,
                  icon: const Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                RoundIconButton(
                  onPressed: onMinusPressed,
                  onLongPress: onMinusLongPressed,
                  onLongPressEnd: onMinusLongPressedEnd,
                  icon: const Icon(
                    Icons.remove,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
