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
          title: Text('Edit Profile', style: Theme.of(context).textTheme.subhead.copyWith(color: Colors.white)),
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
            new FlatButton(
              child: Text('Save', style: Theme.of(context).textTheme.subhead.copyWith(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, '/viewProfile/self');
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
