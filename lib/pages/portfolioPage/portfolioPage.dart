import 'package:benabid_youssef/helpers/DeviceSizeConfig.dart';
import 'package:benabid_youssef/helpers/responsivness.dart';
import 'package:benabid_youssef/layout/portfolioPageLayout.dart';
import 'package:benabid_youssef/widgets/topNav.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  PortfolioPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig().init(context);
    return Scaffold(
      body: ResponsiveWidget(
        largeScreen: Portfolio.largeScreen(),
        mediumScreen: Portfolio.mediumScreen(),
        smallScreen: Portfolio.smallScreen(),
      ),
    );
  }
}