import 'package:favorcate/ui/pages/favor/favor.dart';
import 'package:favorcate/ui/pages/home/home.dart';
import 'package:flutter/material.dart';

final List<Widget> pages = [
  HYHomeScreen(),
  HYFavorScreen()
];

final List<BottomNavigationBarItem> items = [
  const BottomNavigationBarItem(
      label: "首页",
      icon: Icon(Icons.home)
  ),
  const BottomNavigationBarItem(
      label: "收藏",
      icon: Icon(Icons.star)
  ),
];