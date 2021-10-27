import 'package:entry/app.dart';
import 'package:entry/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: magnolia,
      ),
      child: MaterialButton(
          child: Text('Logout'),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.pushNamed(context, authenticationRoute);
          }),
    );
  }
}
