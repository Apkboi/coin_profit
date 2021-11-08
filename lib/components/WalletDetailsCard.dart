import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/SmallChip.dart';

class WalletDetailsCrd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical:10 ),

        child: Column(
          children: [
            Row(
              children: [
                Text(
                  ' N 2100999',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                SmallChip(
                  text: '+567',
                  color: Colors.green,
                  text_color: Colors.white,
                  start_icon: Icons.accessible_rounded,
                  icon_color: Colors.white,
                ),
                SmallChip(
                  text: '24h',
                  color: Colors.grey.shade100,
                  text_color: Colors.grey,
                  start_icon: Icons.alarm,
                  icon_color: Colors.grey,
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.green.shade50,
                          elevation: 0,
                          child: Container(
                            height: 80,
                          ),
                        ),
                      ),
                      SizedBox(width:10 ,),
                      Expanded(
                        child: Card(
                          color: Colors.green,
                          child: Container(
                            height: 80,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'N 40, 666',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                SmallChip(
                                  color: Colors.white,
                                  text_color: Colors.green,
                                  text: 'N455',
                                  start_icon: Icons.accessible_rounded,
                                  icon_color: Colors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.blue.shade50,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Holdings',
                                style: TextStyle(fontSize: 12,color: Colors.grey),
                              ),
                              Text(
                                'N 5546, 65',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        ),
                      ),
                      SizedBox(width:10 ,),
                      Expanded(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.blue.shade50,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Holdings',
                                  style: TextStyle(fontSize: 12,color: Colors.grey),
                                ),
                                Text(
                                  'N 5546, 65',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.blue.shade50,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Holdings',
                                style: TextStyle(fontSize: 12,color: Colors.grey),
                              ),
                              Text(
                                'N 5546, 65',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        ),
                      ),
                      SizedBox(width:10 ,),
                      Expanded(
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.blue.shade50,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Holdings',
                                  style: TextStyle(fontSize: 12,color: Colors.grey),
                                ),
                                Text(
                                  'N 5546, 65',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
