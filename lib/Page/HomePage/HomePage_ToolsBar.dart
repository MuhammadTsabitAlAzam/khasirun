import 'package:flutter/material.dart';
import 'package:kasir/Component/Common/SearchField.dart';

class HomePageToolsBar extends StatelessWidget {
  const HomePageToolsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: Colors.blue,
        child: Row(
          children: [
           IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                child: SearchField(suffixIcon: Icons.search),
              ),
            ),
            SizedBox(width: 10,),
            IconButton(onPressed: (){}, icon: Icon(Icons.barcode_reader))
          ],
        ),
      ),
    );
  }
}
