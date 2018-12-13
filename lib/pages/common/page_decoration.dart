import 'package:flutter/material.dart';

class PageDecoration {

  static BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
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
    );
  }
}