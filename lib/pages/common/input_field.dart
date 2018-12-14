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
      style: new TextStyle(color: Colors.white, fontSize: 18.0),
      maxLines: maxLines,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Color(0xFFa8d7f5), fontSize: 16.0),
          prefixIcon: Icon(
            icon,
            color: Colors.white,
            size: 30.0,
          ),
          border: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Color(0xFFa8d7f5)))),
    );
  }
}
