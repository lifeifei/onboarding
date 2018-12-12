import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/intro_button.dart';
import 'package:onboarding/pages/intro/intro_image.dart';

class IntroWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IntroImage(),
        SizedBox(height: 50.0),
        Container(
            child: Text('Morning, I am Kai',
                style: Theme.of(context).textTheme.title)),
        SizedBox(height: 20.0),
        Container(child: Text('Your ux unicorn buddy')),
        IntroButton('Hello Kai!')
      ],
    );
  }
}
