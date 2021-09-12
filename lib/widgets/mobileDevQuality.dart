import 'package:benabid_youssef/constants/style.dart';
import 'package:benabid_youssef/pages/HomePage/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:benabid_youssef/helpers/DeviceSizeConfig.dart';

class MobileDevQuality extends StatelessWidget {
  final String icon;
  final String quality;
  final String description;
  final List<double> size;

  const MobileDevQuality(
      {required this.icon,
        required this.quality,
        required this.description,
        required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.8),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: EdgeInsets.all(DeviceSizeConfig.blockSizeHorizontal * 4),
            child: Image.asset(
              icon,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ),
        SizedBox(
          height: DeviceSizeConfig.blockSizeHorizontal * 2.5,
        ),
        Text(
          quality,
          style: GoogleFonts.aBeeZee(
            textStyle: TextStyle(
                color: dark, fontSize: size[1], fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: DeviceSizeConfig.blockSizeHorizontal * 2,
        ),
        Container(
          width: size[0],
          child: Text(
            description,
            style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(
                color: dark,
                fontSize: size[2],
                fontWeight: FontWeight.w300,
              ),
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}