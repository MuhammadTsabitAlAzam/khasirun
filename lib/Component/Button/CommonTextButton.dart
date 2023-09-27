import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed; // Tambahkan parameter onPressed

  CommonTextButton({
    required this.label,
    required this.onPressed, // Inisialisasi parameter onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child:  TextButton(
          onPressed: onPressed, // Gunakan onPressed yang diterima dari luar
          child: Text(label),
        ),
    );
  }
}
