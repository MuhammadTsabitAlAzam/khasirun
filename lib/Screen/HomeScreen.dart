import 'package:flutter/material.dart';
import 'package:kasir/Component/Common/SidebarButton.dart';
import 'package:kasir/Page/HomePage/HomePage_AppBar.dart';
import 'package:kasir/Page/HomePage/HomePage_BottomNavbar.dart';
import 'package:kasir/Page/HomePage/HomePage_Products.dart';
import 'package:kasir/Page/HomePage/HomePage_ToolsBar.dart';
import 'package:kasir/Page/HomePage/HomePage_TopNavbar.dart';
import 'package:kasir/Page/HomePage/HomePage_TotalsBar.dart';

import '../Component/Sidebar/LeftSidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftSidebar(),
      drawerEnableOpenDragGesture: true,
      body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HomePageAppBar(),
                HomePageToolsBar(),
                HomePageTopNavbar(),
                HomePageProducts(),
                HomePageBottomNavbar(),
                TotalsBar()
              ],
            ),
          )
    );
  }
}
