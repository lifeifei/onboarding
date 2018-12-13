import 'package:flutter/material.dart';
import 'package:onboarding/scope_models/Intro_model.dart';
import 'package:scoped_model/scoped_model.dart';

class IntroButton extends StatelessWidget {
  final String buttonText;
  final Function onPressButton;

  IntroButton(this.buttonText, this.onPressButton);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
          alignment: FractionalOffset.bottomCenter,
          child: RaisedButton(
              color: Colors.white,
              child: new Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(this.buttonText,
                    style: Theme.of(context).textTheme.button),
              ),
              onPressed: () {
                onPressButton();
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)))),
    );

  }
}
