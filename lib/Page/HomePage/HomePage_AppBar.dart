import 'package:flutter/material.dart';
import 'package:kasir/Component/Common/Appbar.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Appbar(title: 'Jancuk Corp', prefixIcon: Icons.menu, suffixIcon: Icons.supervised_user_circle,);
  }
}
