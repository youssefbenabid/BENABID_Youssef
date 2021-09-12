import 'package:benabid_youssef/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:benabid_youssef/navigationController.dart';
import 'package:benabid_youssef/helpers/responsivness.dart';
import 'package:benabid_youssef/widgets/customText.dart';
import 'package:benabid_youssef/widgets/tabWidget.dart';
import 'package:provider/provider.dart';
import 'package:benabid_youssef/navigationController.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  final navigationController = Provider.of<NavigationController>(context);
  return AppBar(
    title: CustomText(
      text: "Welcome to my portfolio",
      color: lightGrey,
      size: ResponsiveWidget.isSmallScreen(context) ? 15 : 20,
      weight: FontWeight.bold,
    ),
    actions: [
      ElevatedButton(
        onPressed: () {
          navigationController.currentPage = 'home';
          navigationController.pageSelected = PageSelected.home;
        },
        child: TabWidget(
            tabeName: 'Home',
            tabIcon: Icons.home,
            pageSelected: PageSelected.home),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(light),
          overlayColor: MaterialStateProperty.all(
            lightGrey.withOpacity(0.4),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          navigationController.currentPage = 'portfolio';
          navigationController.pageSelected = PageSelected.portfolio;
        },
        child: TabWidget(
          tabeName: 'Portfolio',
          tabIcon: Icons.receipt_sharp,
          pageSelected: PageSelected.portfolio,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(light),
          overlayColor: MaterialStateProperty.all(
            lightGrey.withOpacity(0.4),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          navigationController.currentPage = 'contact';
          navigationController.pageSelected = PageSelected.contact;
        },
        child: TabWidget(
          tabeName: 'Contact',
          tabIcon: Icons.contact_mail,
          pageSelected: PageSelected.contact,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(light),
          overlayColor: MaterialStateProperty.all(
            lightGrey.withOpacity(0.4),
          ),
        ),
      ),
    ],
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}