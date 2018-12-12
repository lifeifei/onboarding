import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  final String buttonText;

  IntroButton(this.buttonText);

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
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)))),
    );
  }
}
