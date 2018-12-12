import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/sign_up_input.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SignUpInput(labelText: 'Name', icon: Icons.person),
      SignUpInput(labelText: 'Email', icon: Icons.person),
      SignUpInput(labelText:'Password', icon: Icons.person, obscureText: true),
    ],);
  }
}