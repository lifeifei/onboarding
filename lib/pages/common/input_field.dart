import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final int maxLines;

  InputField({this.labelText, this.icon, this.obscureText = false, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: new TextStyle(color: Colors.white, fontSize: 21.0),
      maxLines: maxLines,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white, fontSize: 21.0),
          prefixIcon: Icon(
            icon,
            color: Colors.white,
            size: 50.0,
          ),
          border: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.white))),
    );
  }
}
