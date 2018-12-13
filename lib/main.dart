import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding/models/task_item.dart';
import 'package:onboarding/pages/home_page.dart';
import 'package:onboarding/pages/profile/edit_profile_page.dart';
import 'package:onboarding/pages/profile/view_profile_page.dart';
import 'package:onboarding/pages/task/task_list_page.dart';
import 'package:onboarding/pages/task/task_schedule_page.dart';

void main()  {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          hintColor: Colors.white,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
          title: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic, color: Colors.white),
          body1: TextStyle(fontSize: 21.0, fontStyle: FontStyle.italic, color: Colors.white, fontWeight: FontWeight.w400),
          button: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, color: Color(0xFF3399ff), fontWeight: FontWeight.w400)
        ),
      ),
//      home: TaskListPage([Task(description: 'my task')]),
      home: TaskSchedulePage(),
//      home: HomePage(),
      routes: {
        '/editProfile': (BuildContext context) => EditProfilePage(),
        '/viewProfile': (BuildContext context) => ViewProfilePage(),
        '/taskList': (BuildContext context) => TaskListPage([Task(description: 'my task')])
      },
    );
  }
}
