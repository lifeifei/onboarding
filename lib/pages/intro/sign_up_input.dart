import 'package:flutter/material.dart';

class SignUpInput extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obscureText;

  SignUpInput({this.labelText, this.icon, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: new TextStyle(color: Colors.white, fontSize: 21.0),
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
