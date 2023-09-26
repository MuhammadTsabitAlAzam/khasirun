import 'package:flutter/material.dart';
import '../../Component/Home/ProductCard.dart';
import '../../Dummy/productCard.dart';

class HomePageProducts extends StatelessWidget {
  const HomePageProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      height: MediaQuery.of(context).size.height-280,
        width: MediaQuery.of(context).size.width,
        child: ProductGrid(productCards: productCards)
    );
  }
}
