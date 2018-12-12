import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:onboarding/pages/intro/intro_signup_page.dart';
import 'package:onboarding/pages/intro/intro_start_page.dart';
import 'package:onboarding/pages/intro/intro_welcome_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.1, 0.9],
                colors: [
                  // Colors are easy thanks to Flutter's Colors class.
                  Color(0xFF0575E6),
                  Color(0xFF36D1DC),
                ],
              ),
            ),
            child: Swiper(
      itemBuilder: (BuildContext context, int index) {
        return _createPage(index);
      },
      autoplay: false,
      itemCount: 3,
      scrollDirection: Axis.vertical,
      pagination: new SwiperPagination(alignment: Alignment.topRight),
      control: new SwiperControl(color: Colors.white),
    ));
  }

  _createPage(int index) {
    Widget introStepPage;
    switch (index) {
      case 0:
        introStepPage = IntroWelcomePage();
        break;
      case 1:
        introStepPage =  IntroSignUpPage();
        break;
      case 2:
        introStepPage =  IntroStartPage();
        break;
    }
    return Container(
      child: introStepPage,
      margin: EdgeInsets.symmetric(vertical: 100.0),
    );
  }
}
