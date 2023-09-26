import 'package:kasir/Component/Navbar/TopNavigationBar.dart';
import 'package:flutter/material.dart';

class TopNavbarData {
  static final List<TopNavigationBarItem> defaultItems = [
    TopNavigationBarItem(title: 'Semua', onPressed: () {}),
    TopNavigationBarItem(icon: Icons.star, onPressed: () {}),
    TopNavigationBarItem(icon: Icons.discount, onPressed: () {}),
    TopNavigationBarItem(title: 'Deposit', onPressed: () {}),
  ];

  static final List<TopNavigationBarItem> dummyData = [
    ...defaultItems,
    TopNavigationBarItem(title: 'Minuman', onPressed: () {}),
    TopNavigationBarItem(title: 'Makanan', onPressed: () {}),
    TopNavigationBarItem(title: 'Udud', onPressed: () {}),
    TopNavigationBarItem(title: 'Suiii', onPressed: () {}),
    TopNavigationBarItem(title: 'Minuman', onPressed: () {}),
    TopNavigationBarItem(title: 'Minuman', onPressed: () {}),
  ];
}
