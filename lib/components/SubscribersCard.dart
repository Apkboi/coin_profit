import 'package:flutter/material.dart';

class SubscribersCard extends StatelessWidget {
  const SubscribersCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                textDirection: TextDirection.rtl,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'My  \n Subscibers ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                  Text(
                    '55644',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: Center(
              child: Icon(

                Icons.people,
              ),
            ),
          ),
        )
      ],
    );
  }
}
