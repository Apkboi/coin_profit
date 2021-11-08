import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/SignUpScreen.dart';
import 'package:hotel_app/widgets/CoinIcon.dart';
import 'package:hotel_app/widgets/CustomButton.dart';
import 'package:hotel_app/widgets/DotIndicator.dart';

class OnboardingScreen extends StatefulWidget {

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black54.withOpacity(1)
                      ])),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/background.JPG',
                    ),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  CoinIcon(
                    size: 44,
                    bg_color: Colors.blue,
                    coin_icon: Icons.accessible,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Be Responsible , Be Profitable ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        shadows: [Shadow(color: Colors.blue)]),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Expanded(
                        child: PageView.builder(
                          onPageChanged: (index) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          scrollDirection: Axis.horizontal,
                          controller: PageController(viewportFraction: 1),
                          itemCount: 3,
                          itemBuilder: (context, index) =>
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Manage Your E-Currency \n  With Ease',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Be Responsible Be Profitable',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18,),
                    Container(
                      height: 10,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) =>
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0),
                              child: DotIndicator(isActive: index ==
                                  _currentIndex ? true : false, size: 10,),
                            ),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => SignUpScreen(),));
                          },
                          text: 'Get Started',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FlatButton(
                            color: Colors.grey.withOpacity(0.1),
                            shape: StadiumBorder(),
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            )),
                        SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
