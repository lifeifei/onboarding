import 'package:flutter/material.dart';
import 'package:onboarding/models/profile.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
import 'package:onboarding/pages/profile/profile_detail.dart';

class ViewProfilePage extends StatelessWidget {
  final Profile profile;

  ViewProfilePage(this.profile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            title: Text('View Profile',
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.white)),
            actions: <Widget>[
              buildActionButton(context),
            ]),
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ProfileDetail(profile),
                )
              ],
            ),
          ),
        ));
  }

  Widget buildActionButton(BuildContext context) {
    if (profile.editable) {
      return new FlatButton(
        child: Text('Edit',
            style: Theme.of(context)
                .textTheme
                .subhead
                .copyWith(color: Colors.white)),
        onPressed: () {
          Navigator.pushNamed(context, '/editProfile');
        },
      );
    }
    return Container();
  }
}
