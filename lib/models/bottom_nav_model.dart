import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/ints.dart';

final bottomNavProvider = ChangeNotifierProvider((ref) => BottomNavModel());

class BottomNavModel extends ChangeNotifier {
  BottomNavModel() {
    init();
  }

  int currentIndex = 0;

  late PageController pageController;

  void init() {
    pageController = PageController(initialPage: currentIndex);
    notifyListeners();
  }

  void onPageChanged({required int index}) {
    currentIndex = index;
    notifyListeners();
  }

  void onTabTapped({required int index}) {
    currentIndex = 1;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: pageAnimationDuration),
      curve: Curves.easeIn,
    );
  }

  void setPageController() {
    pageController = PageController(initialPage: currentIndex);
    notifyListeners();
  }
}
