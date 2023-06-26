import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../screens/input_page.dart';

Gender selectedGender = Gender.male;

// ignore: must_be_immutable
class GenderCard extends StatelessWidget {
  GenderCard(
      {super.key,
      required this.gender,
      required this.onPress,
      required this.cardColour,
      required this.textColour});

  String gender;
  Function() onPress;
  Color cardColour;
  Color textColour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 100,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: kBoxDecoration.copyWith(color: cardColour),
        child: Center(
          child: Text(gender,
              style: GoogleFonts.pacifico(
                  color: textColour,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2)),
        ),
      ),
    );
  }
}
