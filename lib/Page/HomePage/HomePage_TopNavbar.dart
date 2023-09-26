import 'package:flutter/material.dart';
import 'package:kasir/Component/Navbar/TopNavigationBar.dart';
import '../../Dummy/top_navbar_data.dart';

class HomePageTopNavbar extends StatelessWidget {
  const HomePageTopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TopNavigationBar(
              items: TopNavbarData.dummyData, // Menggunakan data dummy dari kelas terpisah
            ),
          ),
        ],
      ),
    );
  }
}
