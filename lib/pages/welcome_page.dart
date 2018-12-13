import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/intro_page.dart';
import 'package:onboarding/pages/common/page_decoration.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: PageDecoration.buildBoxDecoration(),
        child: IntroPage(),
      ),
    );
  }


}
