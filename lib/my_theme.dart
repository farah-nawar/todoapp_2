import 'package:flutter/material.dart';

class myThemeData {
  static Color backgroundLightcolor = Color(0xffDFECDB);
  static Color blackcolor = Color(0xff363636);
  static Color whitecolor = Colors.white;
  static Color primaryLightColor = Color(0xff5D9CEC);
  static Color greenColor = Color(0xff61E757);
  static Color redColor = Color(0xffEC4B4B);
  static Color greyColor = Color(0xffC8C9CB);

  static ThemeData LightTheme= ThemeData(
    primaryColor: primaryLightColor,
    scaffoldBackgroundColor: backgroundLightcolor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryLightColor,
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: whitecolor,
      ), headline2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: blackcolor,
    ),
      headline3: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: primaryLightColor,
      ),
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      selectedItemColor: primaryLightColor ,
      unselectedItemColor: greyColor,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );



}