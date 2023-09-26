import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  final List<TopNavigationBarItem> items;

  TopNavigationBar({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.blue,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: items,
          ),
        ),
      ),
    );
  }
}

class TopNavigationBarItem extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? onPressed;

  TopNavigationBarItem({this.title, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: Colors.white,
                size: 24.0,
              ),
            if (title != null)
              Text(
                title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
