import 'package:flutter/material.dart';

const String PRIMARY_FONT = 'Open Sans';
const String SECONDARY_FONT = 'EBGaramond';
const String TERTIARY_FONT = 'serif';
const double BODY_FONT_SIZE = 16.0;

ThemeData infiniteTheme = ThemeData(
  textTheme: TextTheme(
    headline1: TextStyle(fontFamily: PRIMARY_FONT, fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: TextStyle(fontFamily: PRIMARY_FONT, fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline3: TextStyle(fontFamily: PRIMARY_FONT, fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
    headline4: TextStyle(fontFamily: PRIMARY_FONT, fontSize: 16.0),
    headline5: TextStyle(fontFamily: PRIMARY_FONT, fontSize: 16.0),
    headline6: TextStyle(fontFamily: PRIMARY_FONT, fontSize: 16.0),
    bodyText1: TextStyle(fontFamily: SECONDARY_FONT, fontSize: BODY_FONT_SIZE),
    bodyText2: TextStyle(fontFamily: SECONDARY_FONT, fontSize: BODY_FONT_SIZE)
  ),
  primaryColor: Colors.black,
  primaryColorBrightness: Brightness.dark,
  accentColor: Color(0xB7B09CFF),
  appBarTheme: AppBarTheme(backgroundColor: Colors.grey[900]),
  cardColor: Colors.white,
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
  ),
  // consider `textButtonTheme`
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //     backgroundColor: // can't find any type this will accept
  //   )
  // )
);
