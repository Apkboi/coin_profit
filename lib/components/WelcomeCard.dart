import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/HomeScreen.dart';
import 'package:hotel_app/Screens/LoginScreen.dart';
import 'package:hotel_app/Screens/SelectWalletScreen.dart';
import 'package:hotel_app/widgets/CustomButton.dart';
import 'package:hotel_app/widgets/StackButton.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          child: Card(
            shadowColor: Colors.blue,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Welcome @Emmanuel',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'You dont have any wallet please \n  connect yo'
                    'ur wallet to get started',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => SelectWalletScreeen()));
                      },
                      child: StackButton(
                          text: 'Create Your First Wallet', icon: Icons.add))
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        Positioned(
            left: 0, right: 0, top: -5, child: Center(child: CustomButton()))
      ],
    );
  }
}
