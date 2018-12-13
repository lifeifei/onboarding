import 'package:flutter/material.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
import 'package:onboarding/pages/profile/profile_detail.dart';

class ViewProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(title: Text('View Profile'),),
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Container(
                    child: IconButton(
                        icon: Icon(Icons.edit),
                        color: Colors.white,
                        onPressed: () =>
                            Navigator.pushNamed(context, '/editProfile')),
                    alignment: Alignment.topRight),
                Expanded(
                  child: ProfileDetail(),
                )
              ],
            ),
          ),
        ));
  }
}
