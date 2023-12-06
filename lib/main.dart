import 'package:flutter/material.dart';
import 'package:todoapp_2/my_theme.dart';
import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:HomeScreen.routename,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
      },
      theme: myThemeData.LightTheme,
    );
  }
}

