import 'package:benabid_youssef/helpers/responsivness.dart';
import 'package:benabid_youssef/layout/HomePageLayout.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: HomePageLayouts.largeScreen(),
      mediumScreen: HomePageLayouts.mediumScreen(),
      smallScreen: HomePageLayouts.smallScreen(),
    );
  }
}