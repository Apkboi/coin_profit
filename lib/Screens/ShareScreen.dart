import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/CoinIcon.dart';

class ShareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Row(
                          children: [
                            Text(
                              'Entry Price:',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'N4,667',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Text(
                              'Last Price:',
                              style:
                              TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'N4,667',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: -15,
                    left: 0,
                    right: 0,
                    child: Center(
                        child: CoinIcon(
                      size: 40,
                      bg_color: Colors.blue,
                    ))),
                Positioned(
                    right: 15,
                    top: -20,
                    child: Container(
                        height: 100,
                        width: 155,
                        child: Image(
                          image: AssetImage('assets/share.PNG'),
                        ))),
                Positioned(
                    left: -15,
                    child: Container(
                        height: 80,
                        width: 155,
                        child: Image(
                          image: AssetImage('assets/share.PNG'),
                        ))),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 4, color: Colors.grey)],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: (Radius.circular(15)))),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CoinIcon(
                                size: 50,
                                bg_color: Colors.blue,
                                coin_icon: Icons.share,
                                icon_color: Colors.white,
                              ),
                              Text('Telegram',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              CoinIcon(
                                size: 50,
                                bg_color: Colors.blue,
                                coin_icon: Icons.format_bold_sharp,
                                icon_color: Colors.white,
                              ),
                              Text('Facebook',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              CoinIcon(
                                size: 50,
                                bg_color: Colors.black,
                                coin_icon: Icons.arrow_downward_rounded,
                                icon_color: Colors.white,
                              ),
                              Text('Download',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              CoinIcon(
                                size: 50,
                                bg_color: Colors.grey,
                                coin_icon: Icons.more_horiz,
                                icon_color: Colors.white,
                              ),
                              Text(
                                'More',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.grey),
                        ),
                        style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            padding: EdgeInsets.symmetric(horizontal: 18)),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
