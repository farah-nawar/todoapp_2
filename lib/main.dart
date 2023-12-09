import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_2/my_theme.dart';
import 'home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseFirestore.instance.disableNetwork(); //offline working on firebase
  runApp( MyApp());
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

