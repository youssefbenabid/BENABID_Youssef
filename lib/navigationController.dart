import 'package:flutter/material.dart';

enum PageSelected { home, portfolio, contact }

class NavigationController extends ChangeNotifier {
  String _currentPage = 'home';
  PageSelected _pageSelected = PageSelected.home;

  String get currentPage => _currentPage;
  set currentPage(String currentPage) {
    _currentPage = currentPage;
    notifyListeners();
  }

  PageSelected get pageSelected => _pageSelected;
  set pageSelected(PageSelected pageSelected) {
    _pageSelected = pageSelected;
    notifyListeners();
  }
}