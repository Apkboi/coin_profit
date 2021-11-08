import 'package:flutter/material.dart';
import 'package:hotel_app/components/LoginTextField.dart';
import 'package:hotel_app/widgets/CustomButton.dart';

import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 55,),
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
                                'Create a free account',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'to get started',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
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
                                    Icons.person,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                                hint: 'Username',
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
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'Have a ReferalCode ?  ',
                                    style: TextStyle(color: Colors.grey)),
                                TextSpan(
                                  text: 'Click Here',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline),
                                ),
                              ])),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Text('By creating an acount you agree   ', style: TextStyle(color: Colors.grey)),
                                    Row(
                                      children: [
                                        Checkbox(value: true, onChanged: (value){},),
                                        Text('to the MBC  ', style: TextStyle(color: Colors.grey)),

                                        RichText(

                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: 'terms ',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  decoration:
                                                      TextDecoration.underline)),
                                          TextSpan(
                                              text: 'And ',
                                              style: TextStyle(color: Colors.grey)),
                                          TextSpan(
                                              text: 'conditions',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  decoration: TextDecoration.underline))
                                        ])),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CustomButton(
                                text: 'Continue',
                                onTap: () {},
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
                    'Already have an account',
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
                          builder: (context) => LoginScreen(),
                        ));
                      },
                      child: Text(
                        'Signin',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w400),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
