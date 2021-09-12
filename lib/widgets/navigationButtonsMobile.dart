import 'package:benabid_youssef/constants/style.dart';
import 'package:benabid_youssef/helpers/DeviceSizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationButtonsMobile extends StatelessWidget {
  final String firstButtonText;
  final String secondButtonText;
  final List<int> moveTo;
  final TabController controller;
  const NavigationButtonsMobile(
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
            padding: EdgeInsets.all(DeviceSizeConfig.blockSizeHorizontal * 6),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              firstButtonText,
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                    color: light,
                    fontSize: DeviceSizeConfig.blockSizeHorizontal * 4,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(
          width: DeviceSizeConfig.blockSizeHorizontal * 4,
        ),
        GestureDetector(
          onTap: () {
            controller.animateTo(moveTo[1]);
          },
          child: Container(
            padding: EdgeInsets.all(DeviceSizeConfig.blockSizeHorizontal * 6),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              secondButtonText,
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                    color: light,
                    fontSize: DeviceSizeConfig.blockSizeHorizontal * 4,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}