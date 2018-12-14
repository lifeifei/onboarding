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
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20.0),
            child: ListView.builder(
              itemBuilder: _buildMemberItem,
              itemCount: Profiles.members.length,
            ),
          ),
        ));
  }

  Container _buildMemberItem(BuildContext context, int index) {
    Profile profile = Profiles.members[index];
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: new BoxDecoration(
            color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
            borderRadius: new BorderRadius.all(Radius.circular(4.0))),
        child: ListTile(
            leading: Container(width: 80, height: 80,child: CircleAvatar(
              child: Image.asset("images/${profile.image}.png"),
            )),
            title: Text(profile.name,
                style: Theme.of(context).textTheme.subhead.copyWith(
                    color: Color(0xFF333333),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
            subtitle: Text(profile.position, style: Theme.of(context).textTheme.subhead.copyWith(
                color: Color(0xFF4f4f4f),
                fontSize: 16.0)),
            onTap: () {
              Navigator.pushNamed(context, '/viewProfile/$index');
            }));
  }
}
