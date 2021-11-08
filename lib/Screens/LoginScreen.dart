import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/HomeScreen.dart';
import 'package:hotel_app/Screens/SignUpScreen.dart';
import 'package:hotel_app/Screens/WelcomeScreen.dart';
import 'package:hotel_app/components/LabeledTextField.dart';
import 'package:hotel_app/components/LoginTextField.dart';
import 'package:hotel_app/widgets/CustomButton.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Welcome Back!',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Please Sign in to Your Account\n to Continue ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            LoginTextField(
                              text_color: Colors.grey,
                              preffixIcon: Card(
                                color: Colors.blue,
                                margin: EdgeInsets.all(5),
                                shape: StadiumBorder(),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                              hint: 'Email',
                              hint_color: Colors.grey,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            LoginTextField(
                              text_color: Colors.grey,
                              preffixIcon: Card(
                                color: Colors.blue,
                                margin: EdgeInsets.all(5),
                                shape: StadiumBorder(),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                              hint: 'Password',
                              hint_color: Colors.grey,
                              suffixIcon: Icon(
                                Icons.assessment_rounded,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'forgot password',
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.blue,
                                  decorationStyle: TextDecorationStyle.wavy),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              text: 'Continue',
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WelcomeScreen(),
                                ));
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: -15,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Do you have an account',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton(
                    shape: StadiumBorder(),
                    color: Colors.blue.shade100,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
