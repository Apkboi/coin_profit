import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/SplashScreen.dart';
import 'package:hotel_app/Theme/MythemeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:MythemeData.themeData(

      ),
      home: SplashScreen(),
    );
  }
}



