import 'package:flutter/material.dart';

class MyCustomEmailField extends StatefulWidget {
  final TextEditingController controller;

  MyCustomEmailField({
    required this.controller,
  });

  @override
  _MyCustomEmailFieldState createState() => _MyCustomEmailFieldState();
}

class _MyCustomEmailFieldState extends State<MyCustomEmailField> {
  String? _emailErrorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: 'Email',
        errorText: _emailErrorText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      validator: (value) {
        if (!isValidEmail(value)) {
          setState(() {
            _emailErrorText = 'Masukkan email yang valid';
          });
        } else {
          setState(() {
            _emailErrorText = null;
          });
        }
        return null;
      },
    );
  }

  bool isValidEmail(String? email) {
    if (email == null || !email.contains('@')) {
      return false;
    }
    return true;
  }
}
