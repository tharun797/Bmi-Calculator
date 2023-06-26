import 'package:bmi_calculator/components/custom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmi,
      required this.resultText,
      required this.interpretation});

  final String bmi;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            kTitleResultPage,
            style: GoogleFonts.pacifico(
                color: Colors.grey[800],
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 1,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: kBoxDecoration,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText,
                        style: GoogleFonts.pacifico(
                            color: Colors.grey[800],
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                      Text(
                        bmi,
                        style:
                            TextStyle(fontSize: 100, color: Colors.grey[800]),
                      ),
                      Text(
                        kNormalBMI,
                        style: GoogleFonts.pacifico(
                            color: Colors.grey[800],
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                      Text(
                        kNormalBMIRange,
                        style: GoogleFonts.pacifico(
                            color: Colors.grey[800],
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                      Text(
                        interpretation,
                        style: GoogleFonts.pacifico(
                            color: Colors.grey[800],
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
              buttonName: kReCalculate,
              onTap: () => Navigator.pop(context),
            ),
            const SizedBox(
              height: 33,
            ),
          ],
        ),
      ),
    );
  }
}
