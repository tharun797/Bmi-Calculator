import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
    CustomButton({super.key, required this.buttonName, required this.onTap});

  String buttonName;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: kBoxDecoration.copyWith(color: kSecondaryColour),
        child: Center(
          child: Text(buttonName,
              style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2)),
        ),
      ),
    );
  }
}
