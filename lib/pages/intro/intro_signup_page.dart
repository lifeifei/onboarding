import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/intro_button.dart';
import 'package:onboarding/pages/intro/intro_image.dart';
import 'package:onboarding/pages/intro/sign_up.dart';

class IntroSignUpPage extends StatelessWidget {
  final Function onButtonPressed;

  IntroSignUpPage(this.onButtonPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IntroImage(),
        SignUp(),
        IntroButton('Sign up', onButtonPressed)
      ],
    );
  }
}
