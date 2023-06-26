import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../constants.dart';

// ignore: must_be_immutable
class HeightCard extends StatelessWidget {
  HeightCard({super.key, required this.onChanged, required this.height});

  Function(dynamic)? onChanged;
  int height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 19),
          decoration: kBoxDecoration,
          child: Center(
            child: Column(
              children: [
                Text(kHeight,
                    style: GoogleFonts.pacifico(
                        color: Colors.grey[800],
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2)),
                Expanded(
                  child: SfSliderTheme(
                    data: SfSliderThemeData(
                      labelOffset: const Offset(10, -1),
                      activeLabelStyle:
                           TextStyle(color: Colors.grey[800], fontSize: 15),
                      inactiveLabelStyle:
                          const TextStyle(color: Colors.grey, fontSize: 15),
                      thumbRadius: 15,
                      thumbColor: kSecondaryColour,
                      overlayRadius: 17,
                      overlayColor: kSecondaryColour,
                      activeTrackColor: kSecondaryColour,
                      inactiveTrackColor: kInactiveTrackColour,
                      activeTickColor: Colors.grey[800],
                      activeMinorTickColor:Colors.grey[800],
                      tickSize: const Size(25.0, 1.2),
                      minorTickSize: const Size(15.0, 1.2),
                      tickOffset: const Offset(20.0, -1),
                    ),
                    child: SfSlider.vertical(
                      min: 110,
                      max: 250,
                      value: height.toDouble(),
                      interval: 20,
                      showTicks: true,
                      showLabels: true,
                      enableTooltip: true,
                      minorTicksPerInterval: 3,
                      onChanged: onChanged,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
