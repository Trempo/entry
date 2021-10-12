import 'package:entry/net/flutterfire.dart';
import 'package:entry/screens/authentication/authentication.dart';
import 'package:entry/screens/home/home.dart';
import 'package:entry/screens/register/register.dart';
import 'package:entry/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const RegisterRoute = '/register';
const AuthenticationRoute = '/authentication';
const HomeRoute = '/';

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
        case AuthenticationRoute:
          screen = Authentication();
          break;
        case RegisterRoute:
          screen = Register();
          break;
        case HomeRoute:
          screen = isLoggedIn() ? Home() : Authentication();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
