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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IntroImage(),
        SizedBox(height: 30.0),
        Container(
            child: Text("Let’s get your account set up",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 20.0))),
        SizedBox(height: 40.0),
        SignUp(),
        SizedBox(height: 40.0),
        IntroButton('Sign up', onButtonPressed)
      ],
    );
  }
}
