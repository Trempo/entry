import 'package:entry/net/flutterfire.dart';
import 'package:entry/screens/authentication/authentication.dart';
import 'package:entry/screens/home/home.dart';
import 'package:entry/screens/profile/profile.dart';
import 'package:entry/screens/register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const registerRoute = '/register';
const authenticationRoute = '/authentication';
const homeRoute = '/';
const profileRoute = '/profile';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entry',
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic>? arguments =
          settings.arguments as Map<String, dynamic>?;
      Widget screen;
      switch (settings.name) {
        case authenticationRoute:
          screen = Authentication();
          break;
        case registerRoute:
          screen = Register();
          break;
        case homeRoute:
          screen = isLoggedIn() ? Home() : Authentication();
          break;
        case profileRoute:
          screen = isLoggedIn() ? Profile() : Authentication();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
