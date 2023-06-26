import 'package:bmi_calculator/components/custom_button.dart';
import 'package:bmi_calculator/components/gender_card.dart';
import 'package:bmi_calculator/components/height_card.dart';
import 'package:bmi_calculator/components/more_less_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/calculator.dart';

enum Gender { male, female }

enum Card { weight, age }

int weight = 70;
int height = 170;
int age = 25;
bool onLongPress = false;

Card selectedCard = Card.weight;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void onPlusLongPressed() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      if (selectedCard == Card.weight) {
        weight++;
      } else {
        age++;
      }
    });
    if (onLongPress == true) {
      onPlusLongPressed();
    }
  }

  void onMinusLongPressed() async {
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      if (selectedCard == Card.weight) {
        weight--;
      } else {
        age--;
      }
    });
    if (onLongPress == true) {
      onMinusLongPressed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(kTitleInputPage,
              style: GoogleFonts.pacifico(
                  color: Colors.grey[800],
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2)),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: GenderCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    gender: kMale,
                    cardColour: selectedGender == Gender.male
                        ? kSecondaryColour
                        : Colors.white,
                    textColour: selectedGender == Gender.male
                        ? Colors.white
                        : Colors.grey.shade800,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: GenderCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    gender: kFemale,
                    cardColour: selectedGender == Gender.female
                        ? kSecondaryColour
                        : Colors.white,
                    textColour: selectedGender == Gender.female
                        ? Colors.white
                        : Colors.grey.shade800,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 500,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: HeightCard(
                    height: height,
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: MoreLessCard(
                            name: kWeight,
                            onPlusPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            onMinusPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            onPlusLongPressed: () {
                              onLongPress = true;
                              setState(() {
                                selectedCard = Card.weight;
                              });
                              onPlusLongPressed();
                            },
                            onPlusLongPressedEnd: (value) {
                              setState(() {
                                onLongPress = false;
                              });
                            },
                            onMinusLongPressed: () {
                              onLongPress = true;
                              setState(() {
                                selectedCard = Card.weight;
                              });
                              onMinusLongPressed();
                            },
                            onMinusLongPressedEnd: (value) {
                              setState(() {
                                onLongPress = false;
                              });
                            },
                            value: weight.toString(),
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Expanded(
                          child: MoreLessCard(
                            name: kAge,
                            onPlusPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            onMinusPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            onPlusLongPressed: () {
                              onLongPress = true;
                              setState(() {
                                selectedCard = Card.age;
                              });
                              onPlusLongPressed();
                            },
                            onPlusLongPressedEnd: (value) {
                              setState(() {
                                onLongPress = false;
                              });
                            },
                            onMinusLongPressed: () {
                              onLongPress = true;
                              setState(() {
                                selectedCard = Card.age;
                              });
                              onMinusLongPressed();
                            },
                            onMinusLongPressedEnd: (value) {
                              setState(() {
                                onLongPress = false;
                              });
                            },
                            value: age.toString(),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            CustomButton(
                buttonName: kCalculate,
                onTap: () {
                  Calculator calc = Calculator(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                          bmi: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation()),
                    ),
                  );
                }),
            const SizedBox(
              height: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
