import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String backgroundImage;
  final int stok;
  final String hargaProduk;
  final String namaProduk;

  ProductCard({
    required this.backgroundImage,
    required this.stok,
    required this.hargaProduk,
    required this.namaProduk,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100, // Atur tinggi gambar produk sesuai kebutuhan Anda
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0), // Atur radius sesuai kebutuhan
                topRight: Radius.circular(5.0), // Atur radius sesuai kebutuhan
              ),
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$stok',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 35.0),
                  Text(
                    '$hargaProduk',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$namaProduk',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  final List<ProductCard> productCards;

  ProductGrid({required this.productCards});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Jumlah kolom dalam grid
        crossAxisSpacing: 8.0, // Spasi antara kolom
        mainAxisSpacing: 8.0, // Spasi antara baris
      ),
      itemCount: productCards.length,
      itemBuilder: (BuildContext context, int index) {
        return productCards[index];
      },
    );
  }
}