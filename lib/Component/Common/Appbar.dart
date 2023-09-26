import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  final String title;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  Appbar({required this.title, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: prefixIcon != null
          ? IconButton(
              icon: Icon(prefixIcon),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )
          : null,
      actions: <Widget>[
        if (suffixIcon != null)
          IconButton(
            icon: Icon(suffixIcon),
            onPressed: () {
              // Tambahkan logika untuk ikon suffix di sini jika diperlukan
            },
          ),
      ],
    );
  }
}
