import 'package:flutter/material.dart';
import 'package:basics/energystored.dart';
import 'package:basics/energyused.dart';
import 'package:basics/start_screen.dart';
import 'package:basics/totalsteps.dart';
import 'package:basics/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  var activeScreen = "start-screen";
  var secondScreen = "startscreen";
  var thirdScreen = "starscreen";

  void switchScreen() {
    setState(() {
      if (activeScreen == 'start-screen') {
        activeScreen = 'stored-screen';
      } else if (activeScreen == 'stored-screen') {
        activeScreen = 'start-screen';
        secondScreen = 'used-screen';
        thirdScreen = 'steps-screen';
      } else {
        activeScreen = 'start-screen';
        secondScreen = 'startscreen';
        thirdScreen = 'starscreen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isAuthenticated = UserData.getUser() != null;
    print(isAuthenticated);
    Widget screenWidget;

    if (isAuthenticated) {
      if (activeScreen == 'start-screen') {
        screenWidget = StartScreen(
          energystored: switchScreen,
          energyused: () {},
        );
      } else if (activeScreen == 'stored-screen') {
        screenWidget = const Stored();
      } else if (secondScreen == 'used-screen') {
        screenWidget = const Used();
      } else if (thirdScreen == 'steps-screen') {
        screenWidget = const TotalSteps();
      } else {
        screenWidget = Container();
      }
    } else {
      screenWidget = LoginPage();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 149, 252, 153),
                Color.fromARGB(255, 167, 255, 170),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String phoneNumber;
  final String profileImage;

  User(this.name, this.phoneNumber, this.profileImage);
}

class UserData {
  static User? _user;

  static void setUser(User user) {
    _user = user;
  }

  static User? getUser() {
    return _user;
  }
}
