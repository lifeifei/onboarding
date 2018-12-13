import 'package:flutter/material.dart';
import 'package:onboarding/pages/profile/profile_tag_items.dart';
import 'package:onboarding/pages/profile/profile_text_item.dart';

class ProfileDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset('images/virtualbuddy.png',
            height: 100.0,
            width: 100.0,
            alignment: Alignment.topLeft),
        SizedBox(height: 20.0,),
        Text('Lifei Zhou'),
        SizedBox(height: 10.0,),
        Text('Software Engineer'),
        SizedBox(height: 20.0,),
        ProfileTextItem('About me', 'Something is important'),
        SizedBox(height: 20.0,),
        ProfileTextItem('Favorate holiday destination', 'Japan, New York, New Zealand'),
        SizedBox(height: 20.0,),
        ProfileTextItem('Favorate food', 'Dumpling, Ice cream'),
        SizedBox(height: 20.0,),
        ProfileTagItems('Skills', ['Ruby', 'Java']),
      ],
    );
  }
}