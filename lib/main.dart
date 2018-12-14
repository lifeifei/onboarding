import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding/models/all_tasks.dart';
import 'package:onboarding/models/profile.dart';
import 'package:onboarding/models/profiles.dart';
import 'package:onboarding/models/task_item.dart';
import 'package:onboarding/pages/home_page.dart';
import 'package:onboarding/pages/welcome_page.dart';
import 'package:onboarding/pages/profile/edit_profile_page.dart';
import 'package:onboarding/pages/profile/view_profile_page.dart';
import 'package:onboarding/pages/task/task_list_page.dart';
import 'package:onboarding/scope_models/tasks_model.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<TasksModel>(
        model: TasksModel(),
        child: MaterialApp(
            theme: ThemeData(
              fontFamily: 'Poppins',
              hintColor: Colors.white,
              textTheme: TextTheme(
                  headline: TextStyle(
                      fontSize: 72.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  title: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  subhead: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFa8d7f5)),
                  body1: TextStyle(
                      fontSize: 21.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                  button: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF3399ff),
                      fontWeight: FontWeight.bold)),
            ),
            home: WelcomePage(),
//            home: HomePage(),
            routes: {
              '/editProfile': (BuildContext context) => EditProfilePage(),
              '/viewProfile': (BuildContext context) => ViewProfilePage(null),
              '/homepage': (BuildContext context) => HomePage()
            },
            onGenerateRoute: _buildRoute));
  }

  Route<dynamic> _buildRoute(RouteSettings settings) {
    final List<String> path = settings.name.split('/');
    if (path[0] != '') {
      return null;
    }
    if (path[1] == 'viewProfile') {
      final String secondArg = path[2];
      Profile profile;
      if (secondArg == 'self') {
        profile = Profiles.self;
      } else {
        final int index = int.parse(secondArg);
        profile = Profiles.members[index];
      }
      return MaterialPageRoute<bool>(
        builder: (BuildContext context) => ViewProfilePage(profile),
      );
    }

    if (path[1] == 'taskList') {
      final int index = int.parse(path[2]);

      print("====index: $index");

      return MaterialPageRoute<bool>(builder: (BuildContext context) {
        if (index == 0) {
          return ScopedModelDescendant<TasksModel>(
            builder: (context, child, model) => TaskListPage(model.tasks, model.toggleCompleted),
          );
        } else {
          return TaskListPage(AllTasks.allDaysTasks[index].tasks, null);
        }
      });
    }

    return null;
  }
}
