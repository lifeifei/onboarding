import 'package:flutter/material.dart';
import 'package:onboarding/pages/common/input_field.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      InputField(labelText: 'Name', icon: Icons.person),
      InputField(labelText: 'Email', icon: Icons.person),
      InputField(labelText:'Password', icon: Icons.person, obscureText: true),
    ],);
  }
}