import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/intro_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: IntroPage(),
    );
  }
}
