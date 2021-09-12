import 'package:benabid_youssef/helpers/responsivness.dart';
import 'package:flutter/material.dart';
import 'package:benabid_youssef/constants/style.dart';
import 'package:benabid_youssef/navigationController.dart';
import 'package:provider/provider.dart';

class TabWidget extends StatelessWidget {
  final String tabeName;
  final IconData tabIcon;
  final PageSelected pageSelected;

  const TabWidget(
      {required this.tabeName,
        required this.tabIcon,
        required this.pageSelected});

  @override
  Widget build(BuildContext context) {
    final navigationController = Provider.of<NavigationController>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            tabIcon,
            color: navigationController.pageSelected == pageSelected
                ? Colors.blue
                : lightGrey,
            size: ResponsiveWidget.isSmallScreen(context) ? 13 : 23,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            tabeName,
            style: TextStyle(
              color: navigationController.pageSelected == pageSelected
                  ? Colors.blue
                  : dark,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 13 : 20,
            ),
          ),
        ],
      ),
    );
  }
}