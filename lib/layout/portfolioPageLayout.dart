import 'package:benabid_youssef/helpers/DeviceSizeConfig.dart';
import 'package:benabid_youssef/widgets/navigationButtonsMobile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:benabid_youssef/constants/style.dart';
import 'package:benabid_youssef/helpers/strings.dart';
import 'package:benabid_youssef/widgets/navigationButtons.dart';
import 'package:benabid_youssef/widgets/projectTemplate.dart';
import 'package:benabid_youssef/widgets/projectTemplateMobile.dart';

class Portfolio {
  static Widget largeScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Flutter Based Projects',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProjectTemplate(
                      imagesHeight: 0,
                      isVideoDemo: true,
                      demoImages: [Container()],
                      videoRatio: 3,
                      videoPath: 'assets/videos/tictactoe.mp4',
                      state: 'In development',
                      appTitle: 'Tic Tac Toe',
                      appDescription: tictactoeAppDescription),
                  ProjectTemplate(
                      imagesHeight: 450,
                      isVideoDemo: false,
                      demoImages: [
                        Image.asset('assets/images/travelApp/travelApp1.jpg'),
                        Image.asset('assets/images/travelApp/travelApp2.jpg'),
                        Image.asset('assets/images/travelApp/travelApp3.jpg'),
                        Image.asset('assets/images/travelApp/travelApp4.jpg'),
                        Image.asset('assets/images/travelApp/travelApp5.jpg'),
                      ],
                      videoRatio: 3,
                      videoPath: '',
                      state: 'The app is done',
                      appTitle: "Travel app UI",
                      appDescription: travelUiDescription),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProjectTemplate(
                      imagesHeight: 0,
                      isVideoDemo: true,
                      demoImages: [Container()],
                      videoRatio: 3,
                      videoPath: 'assets/videos/tetrisGame.mp4',
                      state: 'The app is done',
                      appTitle: "Tetris game",
                      appDescription: tetrisGameDescription),
                  ProjectTemplate(
                      imagesHeight: 450,
                      isVideoDemo: false,
                      demoImages: [
                        Image.asset(
                            'assets/images/clubhouseApp/clubhouseApp1.jpg'),
                        Image.asset(
                            'assets/images/clubhouseApp/clubhouseApp2.jpg'),
                        Image.asset(
                            'assets/images/clubhouseApp/clubhouseApp3.jpg'),
                        Image.asset(
                            'assets/images/clubhouseApp/clubhouseApp4.jpg'),
                      ],
                      videoRatio: 3,
                      videoPath: '',
                      state: 'The app is done',
                      appTitle: "Clubhouse UI",
                      appDescription: clubhouseUiDescription),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProjectTemplate(
                      imagesHeight: 450,
                      isVideoDemo: false,
                      demoImages: [
                        Image.asset('assets/images/covidApp/covidApp1.jpg'),
                        Image.asset('assets/images/covidApp/covidApp2.jpg'),
                        Image.asset('assets/images/covidApp/covidApp3.jpg'),
                        Image.asset('assets/images/covidApp/covidApp4.jpg'),
                      ],
                      videoRatio: 3,
                      videoPath: '',
                      state: 'The app is done',
                      appTitle: "Covid dashboard UI",
                      appDescription: covidDashboardUiDescription),
                  ProjectTemplate(
                      imagesHeight: 450,
                      isVideoDemo: false,
                      demoImages: [
                        Image.asset('assets/images/mealApp/mealApp1.jpg'),
                        Image.asset('assets/images/mealApp/mealApp2.jpg'),
                        Image.asset('assets/images/mealApp/mealApp3.jpg'),
                        Image.asset('assets/images/mealApp/mealApp4.jpg'),
                        Image.asset('assets/images/mealApp/mealApp5.jpg'),
                        Image.asset('assets/images/mealApp/mealApp6.jpg'),
                        Image.asset('assets/images/mealApp/mealApp7.jpg'),
                        Image.asset('assets/images/mealApp/mealApp8.jpg'),
                        Image.asset('assets/images/mealApp/mealApp9.jpg'),
                        Image.asset('assets/images/mealApp/mealApp10.jpg'),
                      ],
                      videoRatio: 3,
                      videoPath: '',
                      state: 'The app is done',
                      appTitle: "Meals preparation APP",
                      appDescription: mealPrepAppDescription),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProjectTemplate(
                      imagesHeight: 450,
                      isVideoDemo: false,
                      demoImages: [
                        Image.asset(
                            'assets/images/budgetTrackerApp/budgetTrackerApp1.jpg'),
                        Image.asset(
                            'assets/images/budgetTrackerApp/budgetTrackerApp2.jpg'),
                      ],
                      videoRatio: 3,
                      videoPath: '',
                      state: 'The app is done',
                      appTitle: "Budget tracker UI",
                      appDescription: budgetTrackerUiDescription),
                  ProjectTemplate(
                      imagesHeight: 450,
                      isVideoDemo: false,
                      demoImages: [
                        Image.asset('assets/images/chatApp/chatApp1.jpg'),
                        Image.asset('assets/images/chatApp/chatApp2.jpg'),
                        Image.asset('assets/images/chatApp/chatApp3.jpg'),
                      ],
                      videoRatio: 3,
                      videoPath: '',
                      state: 'The app is done',
                      appTitle: "Chat app UI",
                      appDescription: chatUiDescription),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProjectTemplate(
                      imagesHeight: 0,
                      isVideoDemo: true,
                      demoImages: [Container()],
                      videoRatio: 3,
                      videoPath: 'assets/videos/BMI_calculator.mp4',
                      state: 'The app is done',
                      appTitle: "BMI calculator",
                      appDescription: bmiCalculatorAppDescription),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget mediumScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Flutter Based Projects',
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                        color: dark,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 2,
                  width: 200,
                  color: dark,
                ),
              ),
              ProjectTemplate(
                  imagesHeight: 0,
                  isVideoDemo: true,
                  demoImages: [Container()],
                  videoRatio: 4,
                  videoPath: 'assets/videos/tictactoe.mp4',
                  state: 'In development',
                  appTitle: 'Tic Tac Toe',
                  appDescription: tictactoeAppDescription),
              ProjectTemplate(
                  imagesHeight: 400,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/travelApp/travelApp1.jpg'),
                    Image.asset('assets/images/travelApp/travelApp2.jpg'),
                    Image.asset('assets/images/travelApp/travelApp3.jpg'),
                    Image.asset('assets/images/travelApp/travelApp4.jpg'),
                    Image.asset('assets/images/travelApp/travelApp5.jpg'),
                  ],
                  videoRatio: 4,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Travel app UI",
                  appDescription:
                  "This app gives the users several dishes with their ingredients and steps, the users can make a list of their favorite dishes, the app  also has a section where the users can filter the type of food that they do not want."),
              ProjectTemplate(
                  imagesHeight: 0,
                  isVideoDemo: true,
                  demoImages: [Container()],
                  videoRatio: 4,
                  videoPath: 'assets/videos/tetrisGame.mp4',
                  state: 'The app is done',
                  appTitle: "Tetris game",
                  appDescription: tetrisGameDescription),
              ProjectTemplate(
                  imagesHeight: 400,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/clubhouseApp/clubhouseApp1.jpg'),
                    Image.asset('assets/images/clubhouseApp/clubhouseApp2.jpg'),
                    Image.asset('assets/images/clubhouseApp/clubhouseApp3.jpg'),
                    Image.asset('assets/images/clubhouseApp/clubhouseApp4.jpg'),
                  ],
                  videoRatio: 4,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Clubhouse UI",
                  appDescription: clubhouseUiDescription),
              ProjectTemplate(
                  imagesHeight: 400,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/covidApp/covidApp1.jpg'),
                    Image.asset('assets/images/covidApp/covidApp2.jpg'),
                    Image.asset('assets/images/covidApp/covidApp3.jpg'),
                    Image.asset('assets/images/covidApp/covidApp4.jpg'),
                  ],
                  videoRatio: 4,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Covid dashboard UI",
                  appDescription: covidDashboardUiDescription),
              ProjectTemplate(
                  imagesHeight: 400,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/mealApp/mealApp1.jpg'),
                    Image.asset('assets/images/mealApp/mealApp2.jpg'),
                    Image.asset('assets/images/mealApp/mealApp3.jpg'),
                    Image.asset('assets/images/mealApp/mealApp4.jpg'),
                    Image.asset('assets/images/mealApp/mealApp5.jpg'),
                    Image.asset('assets/images/mealApp/mealApp6.jpg'),
                    Image.asset('assets/images/mealApp/mealApp7.jpg'),
                    Image.asset('assets/images/mealApp/mealApp8.jpg'),
                    Image.asset('assets/images/mealApp/mealApp9.jpg'),
                    Image.asset('assets/images/mealApp/mealApp10.jpg'),
                  ],
                  videoRatio: 4,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Meals preparation APP",
                  appDescription: mealPrepAppDescription),
              ProjectTemplate(
                  imagesHeight: 400,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset(
                        'assets/images/budgetTrackerApp/budgetTrackerApp1.jpg'),
                    Image.asset(
                        'assets/images/budgetTrackerApp/budgetTrackerApp2.jpg'),
                  ],
                  videoRatio: 4,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Budget tracker UI",
                  appDescription: budgetTrackerUiDescription),
              ProjectTemplate(
                  imagesHeight: 400,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/chatApp/chatApp1.jpg'),
                    Image.asset('assets/images/chatApp/chatApp2.jpg'),
                    Image.asset('assets/images/chatApp/chatApp3.jpg'),
                  ],
                  videoRatio: 4,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Chat app UI",
                  appDescription: chatUiDescription),
              ProjectTemplate(
                  imagesHeight: 0,
                  isVideoDemo: true,
                  demoImages: [Container()],
                  videoRatio: 4,
                  videoPath: 'assets/videos/BMI_calculator.mp4',
                  state: 'The app is done',
                  appTitle: "BMI calculator",
                  appDescription: bmiCalculatorAppDescription),
              SizedBox(
                height: 40,
              ),

              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget smallScreen() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: ListView(
            children: [
              SizedBox(
                height: DeviceSizeConfig.blockSizeVertical * 3,
              ),
              Text(
                'Flutter Based Projects',
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                        color: dark,
                        fontSize: DeviceSizeConfig.blockSizeHorizontal * 6,
                        fontWeight: FontWeight.bold)),
              ),
              Center(
                child: Container(
                  height: DeviceSizeConfig.blockSizeHorizontal * 0.5,
                  width: DeviceSizeConfig.blockSizeHorizontal * 35,
                  color: dark,
                ),
              ),
              ProjectTemplateMobile(
                  imagesHeight: 0,
                  isVideoDemo: true,
                  demoImages: [Container()],
                  videoRatio: DeviceSizeConfig.blockSizeHorizontal * 0.5,
                  videoPath: 'assets/videos/tictactoe.mp4',
                  state: 'In development',
                  appTitle: 'Tic Tac Toe',
                  appDescription: tictactoeAppDescription),
              ProjectTemplateMobile(
                  imagesHeight: DeviceSizeConfig.blockSizeVertical * 65,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/travelApp/travelApp1.jpg'),
                    Image.asset('assets/images/travelApp/travelApp2.jpg'),
                    Image.asset('assets/images/travelApp/travelApp3.jpg'),
                    Image.asset('assets/images/travelApp/travelApp4.jpg'),
                    Image.asset('assets/images/travelApp/travelApp5.jpg'),
                  ],
                  videoRatio: 0,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Travel app UI",
                  appDescription: travelUiDescription),
              ProjectTemplateMobile(
                  imagesHeight: 0,
                  isVideoDemo: true,
                  demoImages: [Container()],
                  videoRatio: DeviceSizeConfig.blockSizeHorizontal * 0.5,
                  videoPath: 'assets/videos/tetrisGame.mp4',
                  state: 'The app is done',
                  appTitle: "TetrisGame",
                  appDescription: tetrisGameDescription),
              ProjectTemplateMobile(
                  imagesHeight: DeviceSizeConfig.blockSizeVertical * 65,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/clubhouseApp/clubhouseApp1.jpg'),
                    Image.asset('assets/images/clubhouseApp/clubhouseApp2.jpg'),
                    Image.asset('assets/images/clubhouseApp/clubhouseApp3.jpg'),
                    Image.asset('assets/images/clubhouseApp/clubhouseApp4.jpg'),
                  ],
                  videoRatio: 0,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Clubhouse UI",
                  appDescription: clubhouseUiDescription),
              ProjectTemplateMobile(
                  imagesHeight: DeviceSizeConfig.blockSizeVertical * 65,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/covidApp/covidApp1.jpg'),
                    Image.asset('assets/images/covidApp/covidApp2.jpg'),
                    Image.asset('assets/images/covidApp/covidApp3.jpg'),
                    Image.asset('assets/images/covidApp/covidApp4.jpg'),
                  ],
                  videoRatio: 0,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Covid dashboard UI",
                  appDescription: covidDashboardUiDescription),
              ProjectTemplateMobile(
                  imagesHeight: DeviceSizeConfig.blockSizeVertical * 65,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/mealApp/mealApp1.jpg'),
                    Image.asset('assets/images/mealApp/mealApp2.jpg'),
                    Image.asset('assets/images/mealApp/mealApp3.jpg'),
                    Image.asset('assets/images/mealApp/mealApp4.jpg'),
                    Image.asset('assets/images/mealApp/mealApp5.jpg'),
                    Image.asset('assets/images/mealApp/mealApp6.jpg'),
                    Image.asset('assets/images/mealApp/mealApp7.jpg'),
                    Image.asset('assets/images/mealApp/mealApp8.jpg'),
                    Image.asset('assets/images/mealApp/mealApp9.jpg'),
                    Image.asset('assets/images/mealApp/mealApp10.jpg'),
                  ],
                  videoRatio: 0,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Meals preparation APP",
                  appDescription: mealPrepAppDescription),
              ProjectTemplateMobile(
                  imagesHeight: DeviceSizeConfig.blockSizeVertical * 65,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset(
                        'assets/images/budgetTrackerApp/budgetTrackerApp1.jpg'),
                    Image.asset(
                        'assets/images/budgetTrackerApp/budgetTrackerApp2.jpg'),
                  ],
                  videoRatio: 0,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Budget tracker UI",
                  appDescription: budgetTrackerUiDescription),
              ProjectTemplateMobile(
                  imagesHeight: DeviceSizeConfig.blockSizeVertical * 65,
                  isVideoDemo: false,
                  demoImages: [
                    Image.asset('assets/images/chatApp/chatApp1.jpg'),
                    Image.asset('assets/images/chatApp/chatApp2.jpg'),
                    Image.asset('assets/images/chatApp/chatApp3.jpg'),
                  ],
                  videoRatio: 0,
                  videoPath: '',
                  state: 'The app is done',
                  appTitle: "Chat app UI",
                  appDescription: chatUiDescription),
              ProjectTemplateMobile(
                  imagesHeight: 0,
                  isVideoDemo: true,
                  demoImages: [Container()],
                  videoRatio: DeviceSizeConfig.blockSizeHorizontal * 0.5,
                  videoPath: 'assets/videos/BMI_calculator.mp4',
                  state: 'The app is done',
                  appTitle: "BMI calculator",
                  appDescription: bmiCalculatorAppDescription),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}