import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  final String buttonText;
  final Function onPressButton;

  IntroButton(this.buttonText, this.onPressButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
        child: RaisedButton(
            color: Colors.white,
            child: new Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(this.buttonText,
                  style: Theme.of(context)
                      .textTheme
                      .button),
            ),
            onPressed: () {
              onPressButton();
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),)));
  }
}
