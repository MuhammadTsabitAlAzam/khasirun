import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;
  final List<CustomBottomNavigationBarItem> items;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: items.map((item) => item.build(context)).toList(),
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true, // Tampilkan label item yang dipilih
      showUnselectedLabels: true, // Tampilkan label item yang tidak dipilih
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(color: Colors.grey),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
    );
  }
}

class CustomBottomNavigationBarItem {
  final Icon icon;
  final String label;

  CustomBottomNavigationBarItem({
    required this.icon,
    required this.label,
  });

  BottomNavigationBarItem build(BuildContext context) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}