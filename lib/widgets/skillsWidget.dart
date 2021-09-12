import 'package:benabid_youssef/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsWidget extends StatelessWidget {
  final String skillName;
  final String skillLevel;
  final double skillLvl;
  final double w;

  const SkillsWidget({required this.skillName, required this.skillLevel, required this.skillLvl, required this.w});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 100,
            color: Colors.blue.withOpacity(0.8),
            child: Center(
              child: Text(
                skillName,
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                      color: light, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            width: w,
            height: 30,
            color: Colors.grey.withOpacity(0.6),
            child: Stack(
              children: [
                Container(
                  height: 30,
                  width: skillLvl,
                  color: Colors.cyanAccent.withOpacity(0.7),
                ),
                Positioned(
                    top: 8,
                    right: 10,
                    child: Text(skillLevel)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}