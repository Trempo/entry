import 'package:flutter/material.dart';

const String Rubik = 'Rubik';

Color darkPurple = const Color(0xFF242038);
Color slateBlue = const Color(0xFF725ac1);
Color amaranth = const Color(0xFFf50057);
Color magnolia = const Color(0xFFfcf7ff);
Color silverSand = const Color(0xFFc4cad0);

TextStyle tituloEntryLoginRegister = TextStyle(
  fontFamily: Rubik,
  fontWeight: FontWeight.w700,
  fontSize: 64,
  color: magnolia,
);

TextStyle rubik24darkPurple = TextStyle(
    fontFamily: Rubik,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: darkPurple);

TextStyle rubik18darkPurple = TextStyle(
  fontFamily: Rubik,
  fontWeight: FontWeight.w400,
  fontSize: 18,
  color: darkPurple,
);

TextStyle rubik18magnolia = TextStyle(
  fontFamily: Rubik,
  fontWeight: FontWeight.w400,
  fontSize: 18,
  color: magnolia,
);

TextStyle rubik18amaranth = TextStyle(
  fontFamily: Rubik,
  fontWeight: FontWeight.w400,
  fontSize: 18,
  color: amaranth,
);

TextStyle rubik13magnolia = TextStyle(
  fontFamily: Rubik,
  fontWeight: FontWeight.w400,
  fontSize: 13,
  color: magnolia,
);

List<BoxShadow> shadowInputFields = [
  BoxShadow(
    color: Colors.black.withOpacity(0.25),
    spreadRadius: 0,
    blurRadius: 4,
    offset: Offset(0, 4), // changes position of shadow
  )
];
