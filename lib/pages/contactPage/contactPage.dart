import 'package:benabid_youssef/helpers/DeviceSizeConfig.dart';
import 'package:benabid_youssef/helpers/responsivness.dart';
import 'package:benabid_youssef/layout/HomePageLayout.dart';
import 'package:benabid_youssef/layout/contactPageLayout.dart';
import 'package:benabid_youssef/widgets/topNav.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  ContactPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig().init(context);
    return Scaffold(
      body: ResponsiveWidget(
        largeScreen: ContactPageLayout.largeScreen(),
        mediumScreen: ContactPageLayout.largeScreen(),
        smallScreen: ContactPageLayout.smallScreen(),
      ),
    );
  }
}