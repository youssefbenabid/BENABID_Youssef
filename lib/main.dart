
import 'package:benabid_youssef/pages/HomePage/homePage.dart';
import 'package:benabid_youssef/pages/contactPage/contactPage.dart';
import 'package:benabid_youssef/pages/portfolioPage/portfolioPage.dart';
import 'package:benabid_youssef/widgets/topNav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helpers/DeviceSizeConfig.dart';
import 'navigationController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavigationController>(create: (context) {
          return NavigationController();
        }),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BENABID Youssef porfolio',
        theme: ThemeData(),
        home: Portfolio(),
      ),
    );
  }
}

class Portfolio extends StatelessWidget {
  Portfolio({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  Widget currentPage(NavigationController navigationController) {
    if (navigationController.currentPage == 'home') {
      return HomePage();
    } else if (navigationController.currentPage == 'portfolio') {
      return PortfolioPage();
    } else {
      return ContactPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final navigationController =
    Provider.of<NavigationController>(context, listen: false);
    DeviceSizeConfig().init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      body: currentPage(navigationController),
    );
  }
}