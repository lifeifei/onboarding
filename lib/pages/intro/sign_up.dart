import 'package:flutter/material.dart';
import 'package:onboarding/pages/common/input_field.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      InputField(labelText: 'Name', icon: Icons.person_outline),
      InputField(labelText: 'Email', icon: Icons.mail_outline),
      InputField(labelText:'Password', icon: Icons.lock_outline, obscureText: true),
    ],);
  }
}