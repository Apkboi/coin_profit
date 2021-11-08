import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignalCard extends StatelessWidget {
  const SignalCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Card(
              elevation: 5,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 35,
                width: 35,
                child: Center(
                  child: Icon(
                    Icons.alarm,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    LinearProgressIndicator(
                       valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      backgroundColor: Colors.grey.shade100,
                      value: 0.5,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Signal Quality',
                          style: TextStyle(fontSize: 10),
                        ),

                        Text('90%',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
