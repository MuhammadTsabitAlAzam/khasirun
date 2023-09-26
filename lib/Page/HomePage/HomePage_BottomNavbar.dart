import 'package:flutter/material.dart';

import '../../Component/Navbar/BottomNavigationBar.dart';

class HomePageBottomNavbar extends StatefulWidget {
  @override
  _HomePageBottomNavbarState createState() => _HomePageBottomNavbarState();
}

class _HomePageBottomNavbarState extends State<HomePageBottomNavbar> {
  int _selectedIndex = 0;

  // Daftar item untuk CustomBottomNavigationBar
  final List<CustomBottomNavigationBarItem> _bottomNavItems = [
    CustomBottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Pelanggan',
    ),
    CustomBottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Kasir',
    ),
    CustomBottomNavigationBarItem(
      icon: Icon(Icons.work),
      label: 'Jasa',
    ),
    CustomBottomNavigationBarItem(
      icon: Icon(Icons.save),
      label: 'Simpan',
    ),
    CustomBottomNavigationBarItem(
      icon: Icon(Icons.delete),
      label: 'Hapus',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        items: _bottomNavItems,
    );
  }
}