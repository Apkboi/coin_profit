import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/CustomButton.dart';

class LeaderCard extends StatelessWidget {
  const LeaderCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          child: Container(
           
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('assets/picture.JPG'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.wine_bar_rounded,
                              color: Colors.amber,
                              size: 15,
                            ),
                            SizedBox(width: 4,),
                            Text(
                              'Gold',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10,),
                            Card(
                              color: Colors.green,
                              shape: StadiumBorder(),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                child: Text(
                                  '90%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Emannuel Ohworoke',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Nigeria Abuja',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Icon(Icons.people,color: Colors.white,),
                                decoration: BoxDecoration(

                                    gradient: LinearGradient(
                                        colors: [ Colors.cyanAccent,Colors.blue,],
                                        begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Text('Followers',style: TextStyle(fontSize: 10),),
                            Text('57554',style: TextStyle(color: Colors.blue,fontSize: 10,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Icon(Icons.people,color: Colors.white,),
                                decoration: BoxDecoration(

                                    gradient: LinearGradient(
                                        colors: [ Colors.cyanAccent,Colors.blue,],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Text('Followers',style: TextStyle(fontSize: 10),),
                            Text('57554',style: TextStyle(color: Colors.blue,fontSize: 10,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Icon(Icons.people,color: Colors.white,),
                                decoration: BoxDecoration(

                                    gradient: LinearGradient(
                                        colors: [ Colors.cyanAccent,Colors.blue,],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Text('Followers',style: TextStyle(fontSize: 10),),
                            Text('57554',style: TextStyle(color: Colors.blue,fontSize: 10,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            bottom: -12,
            right: 0,
            left: 0,
            child: Center(child: CustomButton()))
      ],
    );
  }
}
