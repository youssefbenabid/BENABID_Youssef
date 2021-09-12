import 'package:benabid_youssef/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationButtons extends StatelessWidget {
  final String firstButtonText;
  final String secondButtonText;
  final List<int> moveTo;
  final TabController controller;
  const NavigationButtons(
      {required this.firstButtonText,
        required this.secondButtonText,
        required this.moveTo,
        required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            controller.animateTo(moveTo[0]);
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              firstButtonText,
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                    color: light, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            controller.animateTo(moveTo[1]);
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              secondButtonText,
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                    color: light, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}