import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/intro_button.dart';
import 'package:onboarding/pages/intro/intro_image.dart';

class IntroWelcomePage extends StatelessWidget {
  final Function onButtonPressed;

  IntroWelcomePage(this.onButtonPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IntroImage(),
        SizedBox(height: 30.0),
        Container(
            child: Text("G'day, I am Kai",
                style: Theme.of(context).textTheme.title)),
        SizedBox(height: 20.0),
        Container(
          child: Text('Your UX unicorn buddy',
              style: Theme.of(context).textTheme.subhead),
        ),
        SizedBox(height: 40.0),
        IntroButton('Hello Kai', onButtonPressed)
      ],
    );
  }
}
