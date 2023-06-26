import 'package:flutter/material.dart';

const kNeumorphism = [
  BoxShadow(
    color: Colors.grey,
    offset: Offset(4, 4),
    blurRadius: 15,
    spreadRadius: 1,
  ),
  BoxShadow(
    color: Colors.white,
    offset: Offset(-5, -5),
    blurRadius: 15,
    spreadRadius: 1,
  )
];

const kTitleResultPage = 'BMI Results';

const kTitleInputPage = 'BMI Calculator';

const kSecondaryColour = Color(0xFFB00020);

const kInactiveTrackColour = Color(0xFFb09da0);

const kNormalBMI = 'Normal BMI range:';

const kNormalBMIRange = '18,5 - 25 kg/m2';

const kReCalculate = 'Re-Calculate';

const kCalculate = 'Calculate';

const kMale = 'Male';

const kFemale = 'Female';

const kWeight = 'Weight';

const kHeight = 'Height';

const kAge = 'Age';

const kBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
    shape: BoxShape.rectangle,
    boxShadow: kNeumorphism);
