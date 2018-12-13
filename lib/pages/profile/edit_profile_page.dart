import 'package:flutter/material.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
import 'package:onboarding/pages/profile/edit_profile.dart';
import 'package:onboarding/pages/profile/profile_detail.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          title: Text('Edit Profile'),
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, '/viewProfile');
              }
            },
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.save),
              onPressed: () {
                Navigator.pushNamed(context, '/viewProfile');
              },
            ),
          ],
        ),
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: EditProfile(),
                )
              ],
            ),
          ),
        ));
  }
}
