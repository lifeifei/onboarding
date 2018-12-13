import 'package:flutter/material.dart';
import 'package:onboarding/pages/intro/intro_swiper.dart';

import 'package:onboarding/scope_models/Intro_model.dart';
import 'package:scoped_model/scoped_model.dart';

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
        child: IntroSwiper());
  }
}
