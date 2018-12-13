import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/intro_page.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
import 'package:onboarding/pages/profile/edit_profile_page.dart';
import 'package:onboarding/pages/profile/view_profile_page.dart';

class HomePage extends StatelessWidget {
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
