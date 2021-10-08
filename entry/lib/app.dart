import 'package:entry/screens/authentication/authentication.dart';
import 'package:entry/screens/register/register.dart';
import 'package:entry/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entry',
      home: Register(),
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
}
