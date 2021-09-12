import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:benabid_youssef/constants/style.dart';
import 'package:benabid_youssef/helpers/DeviceSizeConfig.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPageLayout {
  static Widget largeScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Interested in collaborating or investing?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          color: dark,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 2,
                  width: 350,
                  color: dark,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'I’m always open to discuss product development work or partnership opportunities.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            color: dark,
                            fontSize: 25,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Expanded(
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            icon: Icon(
                              Icons.phone,
                              color: dark,
                            ),
                            label: Center(child: Text("+212 643899060")),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Expanded(
                          child: FloatingActionButton.extended(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch('mailto:youssef.benabid1996@gmail.com');
                            },
                            icon: Icon(
                              Icons.mail,
                              color: dark,
                            ),
                            label: Center(child: Text("youssef.benabid1996@gmail.com")),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Expanded(
                          child: FloatingActionButton.extended(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch("https://github.com/youssefbenabid");
                            },
                            icon: Image.asset(
                              "assets/images/github.png",
                              height: 22,
                              width: 22,
                              color: dark,
                            ),
                            label: Center(
                                child: Text("https://github.com/youssefbenabid")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 40,
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
                  height: DeviceSizeConfig.blockSizeVertical * 4,
                ),
                Text(
                  'Interested in collaborating or investing?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          color: dark,
                          fontSize: DeviceSizeConfig.blockSizeHorizontal * 6,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 0.8,
                ),
                Container(
                  height: DeviceSizeConfig.blockSizeVertical * 0.3,
                  width: DeviceSizeConfig.blockSizeHorizontal * 70,
                  color: dark,
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 3.5,
                ),
                Padding(
                  padding:
                  EdgeInsets.all(DeviceSizeConfig.blockSizeHorizontal * 3),
                  child: Text(
                    'I’m always open to discuss product development work or partnership opportunities.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            color: dark,
                            fontSize: DeviceSizeConfig.blockSizeHorizontal * 5,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 2,
                ),
                Container(
                  padding:
                  EdgeInsets.all(DeviceSizeConfig.blockSizeHorizontal * 3),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: DeviceSizeConfig.blockSizeHorizontal * 0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                            DeviceSizeConfig.blockSizeHorizontal * 6),
                        child: Expanded(
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            icon: Icon(
                              Icons.phone,
                              color: dark,
                            ),
                            label: Center(child: Text("+212 643899060")),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            DeviceSizeConfig.blockSizeHorizontal * 6),
                        child: Expanded(
                          child: FloatingActionButton.extended(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch('mailto:youssef.benabid1996@gmail.com');
                            },
                            icon: Icon(
                              Icons.mail,
                              color: dark,
                            ),
                            label: Center(child: Text("youssef.benabid1996@gmail.com")),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            DeviceSizeConfig.blockSizeHorizontal * 6),
                        child: Expanded(
                          child: FloatingActionButton.extended(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch("https://github.com/youssefbenabid");
                            },
                            icon: Image.asset(
                              "assets/images/github.png",
                              height: DeviceSizeConfig.blockSizeHorizontal * 7,
                              width: DeviceSizeConfig.blockSizeHorizontal * 7,
                              color: dark,
                            ),
                            label: Center(
                                child: Text("https://github.com/youssefbenabid")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: DeviceSizeConfig.blockSizeVertical * 3,
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