import 'package:flutter/material.dart';
import 'package:onboarding/pages/common/input_field.dart';

class EditProfile extends StatelessWidget {

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
        InputField(labelText: 'About me', icon: Icons.person, maxLines: 4,),
        SizedBox(height: 20.0,),
        InputField(labelText: 'Favorate holiday destination', icon: Icons.person),
        SizedBox(height: 20.0,),
        InputField(labelText: 'Favorate food', icon: Icons.person),
        SizedBox(height: 20.0,),
        InputField(labelText: 'Skills', icon: Icons.person),
      ],
    );
  }
}