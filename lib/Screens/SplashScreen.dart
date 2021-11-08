import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/LoginScreen.dart';
import 'package:hotel_app/Screens/OnboardingScreen.dart';
import 'package:hotel_app/Screens/WelcomeScreen.dart';
import 'package:hotel_app/Theme/MythemeData.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 5);
    Future.delayed(d).then((value) =>  {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => OnboardingScreen()))
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [MythemeData.themeData().primaryColor, Color(0xff16c5fe)],
        )),
      ),
      Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.account_balance_sharp,
              size: 25,
            ),
            Text(
              'CoinProfit.app',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 1),
            )
          ],
        ),
      )
    ]));
  }
}
