import 'package:flutter/material.dart';
import 'package:onboarding/pages/common/input_field.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset('images/camera.png',
            height: 120.0, width: 120.0, alignment: Alignment.topLeft),
        SizedBox(
          height: 20.0,
        ),
        Text('Ruby Wong', style: Theme.of(context).textTheme.title),
        SizedBox(
          height: 10.0,
        ),
        Text('Software Engineer', style: Theme.of(context).textTheme.subhead),
        SizedBox(
          height: 20.0,
        ),
        InputField(
          labelText: 'About me',
          icon: Icons.person,
          maxLines: 4,
        ),
        SizedBox(
          height: 20.0,
        ),
        InputField(
            labelText: 'Favorite holiday destination', icon: Icons.beach_access),
        SizedBox(
          height: 20.0,
        ),
        InputField(labelText: 'Favorite food', icon: Icons.local_cafe),
        SizedBox(
          height: 20.0,
        ),
        InputField(labelText: 'Skills', icon: Icons.work),
      ],
    );
  }
}
