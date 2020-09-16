import 'package:flutter/material.dart';

class ZZAppTheme {
  static const double FontSize12 = 12;
  static const double FontSize14 = 14;
  static const double FontSize20 = 20;
  static const double FontSize24 = 24;

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme (
        bodyText2: TextStyle(fontSize: FontSize20),
        headline4: TextStyle(fontSize: FontSize12, ),
        headline3: TextStyle(fontSize: FontSize14),
        headline2: TextStyle(fontSize: FontSize24, fontWeight: FontWeight.w700, color: Colors.black)
    )
  );

  static final Color darkColor = Colors.green;
  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.orange,
    textTheme: TextTheme(
      bodyText2: TextStyle(fontSize: FontSize12),
    )
  );
}