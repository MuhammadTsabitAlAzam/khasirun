import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? suffixIcon;

  SearchField({this.controller, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: 'Cari...',
        suffixIcon: suffixIcon != null
            ? GestureDetector(
          onTap: () {
            // Tambahkan logika untuk ikon suffix di sini jika diperlukan
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(suffixIcon),
          ),
        )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder( // Tambahkan focusedBorder untuk tampilan border saat fokus
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey, // Warna border saat fokus
            width: 2.0, // Lebar border saat fokus
          ),
        ),
        contentPadding: EdgeInsets.all(12.0),
      ),
    );
  }
}
