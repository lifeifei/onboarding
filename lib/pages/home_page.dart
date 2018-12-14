import 'package:flutter/material.dart';
import 'package:onboarding/models/profiles.dart';
import 'package:onboarding/pages/profile/team_page.dart';
import 'package:onboarding/pages/profile/view_profile_page.dart';
import 'package:onboarding/pages/task/task_schedule_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Scaffold(
            body: TabBarView(children: <Widget>[
              TaskSchedulePage(),
              TeamPage(),
              ViewProfilePage(Profiles.self)
            ],),
          bottomNavigationBar: _buildNav(context),
        )));
  }

  Widget _buildNav(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: const Color(0xFF167F67),
      ), // sets the inactive color of the `BottomNavigationBar`
      child: Container(
        height: 50.0,
          child:TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.people),
          ),
          Tab(
            icon: Icon(Icons.person),
          )
        ],
        labelColor: Colors.green,
        unselectedLabelColor: Colors.blue,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(0.0),
        indicatorColor: Colors.red,

      )),
    );
  }
}
