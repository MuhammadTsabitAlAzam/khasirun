import 'package:flutter/material.dart';

import '../../Templates/Text.dart';

class TotalsBar extends StatelessWidget {
  const TotalsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  TotalText('0'),
                  SizedBox(width: 10),
                  Container(
                    height: 25, // Tinggi garis pemisah
                    width: 1, // Lebar garis pemisah
                    color: Colors.grey, // Warna garis pemisah
                  ),
                  SizedBox(width: 10),
                  TotalText('Total'),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TotalText('Rp'),
                  SizedBox(width: 5),
                  TotalText('5000'),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}