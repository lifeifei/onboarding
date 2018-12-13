import 'package:flutter/material.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
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
  int currentPageIndex = 0;
  var pages = [
    new TaskSchedulePage(),
    new ViewProfilePage()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: _buildNav(context),
    );

  }

  Widget _buildNav(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: const Color(0xFF167F67),
      ), // sets the inactive color of the `BottomNavigationBar`
      child: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.work,
                color: const Color(0xFFFFFFFF),
              ),
              title: new Text(
                "Tasks",
                style: new TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              )),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.person,
                color: const Color(0xFFFFFFFF),
              ),
              title: new Text(
                "Profile",
                style: new TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              )),
        ],
        onTap: (int index) {setState(() {
          currentPageIndex = index;
        });},
        currentIndex: currentPageIndex,
      ),
    );

  }


}