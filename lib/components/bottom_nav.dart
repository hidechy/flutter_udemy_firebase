import 'package:flutter/material.dart';

import '../constants/bottom_nav_items.dart';
import '../models/bottom_nav_model.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, required this.bottomNavModel});

  final BottomNavModel bottomNavModel;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: bottomNavItems,
      currentIndex: bottomNavModel.currentIndex,
      onTap: (index) => bottomNavModel.onTabTapped(index: index),
    );
  }
}
