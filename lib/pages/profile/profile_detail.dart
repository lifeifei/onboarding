import 'package:flutter/material.dart';
import 'package:onboarding/models/profile.dart';
import 'package:onboarding/pages/profile/profile_tag_items.dart';
import 'package:onboarding/pages/profile/profile_text_item.dart';

class ProfileDetail extends StatelessWidget {
  final Profile profile;

  ProfileDetail(this.profile);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset('images/virtualbuddy.png',
            height: 100.0,
            width: 100.0,
            alignment: Alignment.topLeft),
        SizedBox(height: 20.0,),
        Text(profile.name),
        SizedBox(height: 10.0,),
        Text(profile.position),
        SizedBox(height: 20.0,),
        ProfileTextItem('About me', profile.about),
        SizedBox(height: 20.0,),
        ProfileTextItem('Favorate holiday destination', profile.holiday),
        SizedBox(height: 20.0,),
        ProfileTextItem('Favorate food', profile.food),
        SizedBox(height: 20.0,),
        ProfileTagItems('Skills', profile.skills),
      ],
    );
  }
}