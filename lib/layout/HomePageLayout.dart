import 'package:benabid_youssef/constants/style.dart';
import 'package:benabid_youssef/helpers/DeviceSizeConfig.dart';
import 'package:benabid_youssef/widgets/mobileDevQuality.dart';
import 'package:benabid_youssef/widgets/skillsWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageLayouts {
  static Widget largeScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Hello, I'm BENABID Youssef. I'm a mobile developer and an engineer specialized in embedded systems.",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(color: dark, fontSize: 20)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Text(
                  'ABOUT',
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          color: dark,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 2,
                  width: 60,
                  color: dark,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/youssef.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.black,
                              width: 6,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Who's this guy?",
                              style: GoogleFonts.aBeeZee(
                                  textStyle: TextStyle(
                                      color: dark,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 400,
                          child: Text(
                            "An engineer in embedded systems which is mostly software development, I'm very passionate about mobile development and creating awesome and animated apps using flutter.",
                            style: GoogleFonts.aBeeZee(
                                textStyle: TextStyle(
                                    color: dark,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SkillsWidget(
                          skillName: "Flutter",
                          skillLvl: 360,
                          skillLevel: "80%",
                          w: 450,
                        ),
                        SkillsWidget(
                          skillName: "Dart",
                          skillLvl: 360,
                          skillLevel: "80%",
                          w: 450,
                        ),
                        SkillsWidget(
                          skillName: "Firebase",
                          skillLvl: 315,
                          skillLevel: "70%",
                          w: 450,
                        ),
                        SkillsWidget(
                          skillName: "Figma",
                          skillLvl: 300,
                          skillLevel: "70%",
                          w: 450,
                        ),
                        SkillsWidget(
                          skillName: "UI Design",
                          skillLvl: 270,
                          skillLevel: "60%",
                          w: 450,
                        ),
                        SkillsWidget(
                          skillName: "Python",
                          skillLvl: 360,
                          skillLevel: "80%",
                          w: 450,
                        ),
                        SkillsWidget(
                          skillName: "Node Red",
                          skillLvl: 300,
                          skillLevel: "65%",
                          w: 450,
                        ),
                        SkillsWidget(
                          skillName: "AI",
                          skillLvl: 270,
                          skillLevel: "60%",
                          w: 450,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Mobile Development',
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          color: dark,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 2,
                  width: 200,
                  color: dark,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "As a mobile developer I assure that for every project I work on, these characteristics are applied :",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(color: dark, fontSize: 20)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MobileDevQuality(
                      icon: 'assets/images/fast.png',
                      quality: 'Fast',
                      description:
                      "Fast load times and lag free interaction, my highest priority.",
                      size: [300, 25, 20],
                    ),
                    MobileDevQuality(
                      icon: 'assets/images/Responsive.png',
                      quality: 'Responsive',
                      description:
                      "My layouts will work on any device, big or small.",
                      size: [300, 25, 20],
                    ),
                    MobileDevQuality(
                      icon: 'assets/images/Light.png',
                      quality: 'Intuitive',
                      description:
                      "Strong preference for easy to use, intuitive UX/UI.",
                      size: [300, 25, 20],
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget mediumScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Hello, I'm BENABID Youssef. I'm a mobile developer and an engineer specialized in embedded systems.",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(color: dark, fontSize: 20)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Text(
                  'ABOUT',
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          color: dark,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 2,
                  width: 60,
                  color: dark,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/youssef.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 6,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("Who's this guy?",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              color: dark,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 400,
                  child: Text(
                    "An engineer in embedded systems which is mostly software development, I'm very passionate about mobile development and creating awesome and animated apps using flutter.",
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            color: dark,
                            fontSize: 15,
                            fontWeight: FontWeight.w300)),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SkillsWidget(
                    skillName: "Flutter",
                    skillLvl: 400,
                    skillLevel: "80%",
                    w: 500),
                SkillsWidget(
                    skillName: "Dart",
                    skillLvl: 400,
                    skillLevel: "80%",
                    w: 500),
                SkillsWidget(
                    skillName: "Firebase",
                    skillLvl: 350,
                    skillLevel: "70%",
                    w: 500),
                SkillsWidget(
                    skillName: "Figma",
                    skillLvl: 350,
                    skillLevel: "70%",
                    w: 500),
                SkillsWidget(
                    skillName: "UI Design",
                    skillLvl: 300,
                    skillLevel: "60%",
                    w: 500),
                SkillsWidget(
                  skillName: "Python",
                  skillLvl: 400,
                  skillLevel: "80%",
                  w: 500,
                ),
                SkillsWidget(
                    skillName: "Node Red",
                    skillLvl: 325,
                    skillLevel: "65%",
                    w: 500),
                SkillsWidget(
                    skillName: "AI", skillLvl: 300, skillLevel: "60%", w: 500),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Mobile Development',
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          color: dark,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 2,
                  width: 200,
                  color: dark,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "As a mobile developer I assure that for every project I work on, these characteristics are applied :",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(color: dark, fontSize: 20)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MobileDevQuality(
                      icon: 'assets/images/fast.png',
                      quality: 'Fast',
                      description:
                      "Fast load times and lag free interaction, my highest priority.",
                      size: [200, 23, 15],
                    ),
                    MobileDevQuality(
                      icon: 'assets/images/Responsive.png',
                      quality: 'Responsive',
                      description:
                      "My layouts will work on any device, big or small.",
                      size: [200, 23, 15],
                    ),
                    MobileDevQuality(
                      icon: 'assets/images/Light.png',
                      quality: 'Intuitive',
                      description:
                      "Strong preference for easy to use, intuitive UX/UI.",
                      size: [200, 23, 15],
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget smallScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 2,
                ),
                Container(
                  width: DeviceSizeConfig.blockSizeHorizontal * 90,
                  child: Padding(
                    padding: EdgeInsets.all(
                        DeviceSizeConfig.blockSizeHorizontal * 4),
                    child: Text(
                      "Hello, I'm BENABID Youssef. I'm a mobile developer and an engineer specialized in embedded systems.",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              color: dark,
                              fontSize:
                              DeviceSizeConfig.blockSizeHorizontal * 5)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Text(
                  'ABOUT',
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          color: dark,
                          fontSize: DeviceSizeConfig.blockSizeHorizontal * 6,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: DeviceSizeConfig.blockSizeHorizontal * 1),
                  height: DeviceSizeConfig.blockSizeHorizontal * 0.5,
                  width: DeviceSizeConfig.blockSizeHorizontal * 15,
                  color: dark,
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 2,
                ),
                Container(
                  height: DeviceSizeConfig.blockSizeVertical * 30,
                  width: DeviceSizeConfig.blockSizeVertical * 30,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/youssef.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 6,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 2,
                ),
                Container(
                  child: Text("Who's this guy?",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              color: dark,
                              fontSize:
                              DeviceSizeConfig.blockSizeHorizontal * 6,
                              fontWeight: FontWeight.bold))),
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 2,
                ),
                Container(
                  width: DeviceSizeConfig.blockSizeHorizontal * 80,
                  child: Text(
                    "An engineer in embedded systems which is mostly software development, I'm very passionate about mobile development and creating awesome and animated apps using flutter.",
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            color: dark,
                            fontSize: DeviceSizeConfig.blockSizeHorizontal * 5,
                            fontWeight: FontWeight.w300)),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 2,
                ),
                SkillsWidget(
                    skillName: "Flutter",
                    skillLvl: DeviceSizeConfig.blockSizeHorizontal * 48,
                    skillLevel: "80%",
                    w: DeviceSizeConfig.blockSizeHorizontal * 60),
                SkillsWidget(
                    skillName: "Dart",
                    skillLvl: DeviceSizeConfig.blockSizeHorizontal * 48,
                    skillLevel: "80%",
                    w: DeviceSizeConfig.blockSizeHorizontal * 60),
                SkillsWidget(
                    skillName: "Firebase",
                    skillLvl: DeviceSizeConfig.blockSizeHorizontal * 42,
                    skillLevel: "70%",
                    w: DeviceSizeConfig.blockSizeHorizontal * 60),
                SkillsWidget(
                    skillName: "Figma",
                    skillLvl: DeviceSizeConfig.blockSizeHorizontal * 42,
                    skillLevel: "70%",
                    w: DeviceSizeConfig.blockSizeHorizontal * 60),
                SkillsWidget(
                    skillName: "UI Design",
                    skillLvl: DeviceSizeConfig.blockSizeHorizontal * 36,
                    skillLevel: "60%",
                    w: DeviceSizeConfig.blockSizeHorizontal * 60),
                SkillsWidget(
                  skillName: "Python",
                  skillLvl: DeviceSizeConfig.blockSizeHorizontal * 48,
                  skillLevel: "80%",
                  w: DeviceSizeConfig.blockSizeHorizontal * 60,
                ),
                SkillsWidget(
                    skillName: "Node Red",
                    skillLvl: DeviceSizeConfig.blockSizeHorizontal * 39,
                    skillLevel: "65%",
                    w: DeviceSizeConfig.blockSizeHorizontal * 60),
                SkillsWidget(
                    skillName: "AI",
                    skillLvl: DeviceSizeConfig.blockSizeHorizontal * 36,
                    skillLevel: "60%",
                    w: DeviceSizeConfig.blockSizeHorizontal * 60),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 3,
                ),
                Text(
                  'Mobile Development',
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          color: dark,
                          fontSize: DeviceSizeConfig.blockSizeHorizontal * 6,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: DeviceSizeConfig.blockSizeHorizontal * 0.5,
                  width: DeviceSizeConfig.blockSizeHorizontal * 40,
                  color: dark,
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 2,
                ),
                Container(
                  width: DeviceSizeConfig.blockSizeHorizontal * 90,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "As a mobile developer I assure that for every project I work on, these characteristics are applied :",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              color: dark,
                              fontSize:
                              DeviceSizeConfig.blockSizeHorizontal * 5)),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MobileDevQuality(
                      icon: 'assets/images/fast.png',
                      quality: 'Fast',
                      description:
                      "Fast load times and lag free interaction, my highest priority.",
                      size: [
                        DeviceSizeConfig.blockSizeHorizontal * 30,
                        DeviceSizeConfig.blockSizeHorizontal * 5,
                        DeviceSizeConfig.blockSizeHorizontal * 3
                      ],
                    ),
                    MobileDevQuality(
                      icon: 'assets/images/Responsive.png',
                      quality: 'Responsive',
                      description:
                      "My layouts will work on any device, big or small.",
                      size: [
                        DeviceSizeConfig.blockSizeHorizontal * 30,
                        DeviceSizeConfig.blockSizeHorizontal * 5,
                        DeviceSizeConfig.blockSizeHorizontal * 3
                      ],
                    ),
                    MobileDevQuality(
                      icon: 'assets/images/Light.png',
                      quality: 'Intuitive',
                      description:
                      "Strong preference for easy to use, intuitive UX/UI.",
                      size: [
                        DeviceSizeConfig.blockSizeHorizontal * 30,
                        DeviceSizeConfig.blockSizeHorizontal * 5,
                        DeviceSizeConfig.blockSizeHorizontal * 3
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}