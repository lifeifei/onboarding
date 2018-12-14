import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/intro_button.dart';
import 'package:onboarding/pages/intro/intro_image.dart';

class IntroStartPage extends StatelessWidget {
  final Function onButtonPressed;

  IntroStartPage(this.onButtonPressed);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IntroImage(),
        SizedBox(height: 30.0),
        Container(
            child: Text('Awesome!',
                style: Theme.of(context).textTheme.title)),

        SizedBox(height: 20.0),
        Container(
          child: Text('Please tell me about yourself',
              style: Theme.of(context).textTheme.subhead),
        )
,
        SizedBox(height: 40.0),
        IntroButton('Setup your profile', onButtonPressed)
      ],
    );
  }
}
