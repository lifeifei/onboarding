import 'package:flutter/material.dart';

class ProfileTextItem extends StatelessWidget {
  final String title;
  final String description;

  ProfileTextItem(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title),
        Text(description),
        Divider(color: Colors.white,)
      ],
    ),);
  }
}