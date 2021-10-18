import 'package:entry/styles.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(1), topLeft: Radius.circular(1)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            iconSize: 37,
            backgroundColor: darkPurple,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: magnolia,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.qr_code,
                    color: magnolia,
                  ),
                  label: 'QR'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.face_outlined,
                    color: magnolia,
                  ),
                  label: 'Profile'),
            ],
          ),
        ));
  }
}
