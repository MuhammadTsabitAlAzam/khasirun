import 'package:flutter/material.dart';

class CommonElevatedButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  CommonElevatedButton({
    required this.label,
    required this.onPressed,
  });

  @override
  _CommonElevatedButtonState createState() => _CommonElevatedButtonState();
}

class _CommonElevatedButtonState extends State<CommonElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: ElevatedButton(
          onPressed: widget.onPressed,
          child: Text(widget.label),
        ),
    );
  }
}
