import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget topNavabarText (String title) => Text(
  title,
  style: TextStyle(
    // fontFamily: '',
    fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500
  ),
);

Widget bottomNavabarText (String title) => Text(
  title,
  style: TextStyle(
    // fontFamily: '',
      fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500
  ),
);

Widget TotalText (String title) => Text(
  title,
  style: TextStyle(
    // fontFamily: '',
      fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w500
  ),
);