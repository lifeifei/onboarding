import 'package:flutter/material.dart';
import 'package:onboarding/models/profile.dart';
import 'package:onboarding/models/profiles.dart';
import 'package:onboarding/pages/common/page_decoration.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Your team'),
        ),
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
            child: ListView.builder(
              itemBuilder: _buildMemberItem,
              itemCount: Profiles.members.length,
            ),
          ),
        ));
  }

  ListTile _buildMemberItem(BuildContext context, int index) {
    Profile profile = Profiles.members[index];
    return ListTile(
        leading: CircleAvatar(
          child: Image.asset('images/virtualbuddy.png'),
        ),
        title: Text(profile.name),
        subtitle: Text(profile.position),
        onTap: () {
          Navigator.pushNamed(context, '/viewProfile/$index');
        });
  }
}
