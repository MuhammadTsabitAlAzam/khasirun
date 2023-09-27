import 'package:flutter/material.dart';
import 'package:kasir/Page/LoginPage/LoginPage.dart';

import '../Component/Sidebar/LeftSidebar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LoginPage(),
            ],
          ),
        )
    );
  }
}
