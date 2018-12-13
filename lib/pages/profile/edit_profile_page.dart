import 'package:flutter/material.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
import 'package:onboarding/pages/profile/edit_profile.dart';
import 'package:onboarding/pages/profile/profile_detail.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(title: Text('Edit Profile'),),
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Container(
                    child: IconButton(
                        icon: Icon(Icons.save),
                        color: Colors.white,
                        onPressed: () =>
                            Navigator.pushNamed(context, '/viewProfile')),
                    alignment: Alignment.topRight),
                Expanded(
                  child: EditProfile(),
                )
              ],
            ),
          ),
        ));
  }
}
