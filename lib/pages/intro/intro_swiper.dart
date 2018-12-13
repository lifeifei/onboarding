import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:onboarding/pages/intro/intro_signup_page.dart';
import 'package:onboarding/pages/intro/intro_start_page.dart';
import 'package:onboarding/pages/intro/intro_welcome_page.dart';

class IntroSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SwiperController controller = SwiperController();
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return _createPage(context, index, controller.move);
      },
      index: 0,
      autoplay: false,
      itemCount: 3,
      scrollDirection: Axis.vertical,
      pagination: new SwiperPagination(alignment: Alignment.topRight),
      control:  SwiperControl(color: Colors.white),
      controller: controller
    );
  }


  _createPage(BuildContext context, int index, Function move){
    Widget introStepPage;
    Function pageAction;
    switch (index) {
      case 0:
        pageAction = () {
          move(1, animation: true);
        };
        introStepPage = IntroWelcomePage(pageAction);
        break;
      case 1:
        pageAction = () {
          move(2, animation: true);
        };
        introStepPage = IntroSignUpPage(pageAction);
        break;
      case 2:
        pageAction = () {
          Navigator.pushReplacementNamed(context, '/editProfile');
        };
        introStepPage = IntroStartPage(pageAction);
        break;
    }
    return Container(
      child: introStepPage,
      margin: EdgeInsets.symmetric(vertical: 100.0),
    );
  }
}
