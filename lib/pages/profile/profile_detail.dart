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
        Image.asset("images/${profile.image}.png",
            height: 120.0, width: 120.0, alignment: Alignment.topLeft),
        SizedBox(
          height: 20.0,
        ),
        Text(profile.name, style: Theme.of(context).textTheme.title),
        SizedBox(height: 10.0,),
        Text(profile.position, style: Theme.of(context).textTheme.subhead),
        SizedBox(height: 20.0,),
        ProfileTextItem('About me', profile.about),
        SizedBox(height: 20.0,),
        ProfileTextItem('Favorite holiday destination', profile.holiday),
        SizedBox(height: 20.0,),
        ProfileTextItem('Favorite food', profile.food),
        SizedBox(height: 20.0,),
        ProfileTagItems('Skills', profile.skills),
      ],
    );
  }
}