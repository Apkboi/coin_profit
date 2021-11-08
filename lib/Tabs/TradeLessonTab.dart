import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/components/FilterSearchRow.dart';
import 'package:hotel_app/components/LeaderLessonCard.dart';
import 'package:hotel_app/components/LessonCard.dart';
import 'package:hotel_app/widgets/CustomButton.dart';
import 'package:hotel_app/widgets/StackButton.dart';

class TradeLessonTab extends StatefulWidget {
  const TradeLessonTab({Key key}) : super(key: key);

  @override
  _TradeLessonTabState createState() => _TradeLessonTabState();
}

class _TradeLessonTabState extends State<TradeLessonTab> {
  bool _state = true;
  bool card_visibility = true;
  bool list_visibility = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
        child: Stack(children: [
          Visibility(
            visible: card_visibility,
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Text(
                          'Create Your First Trading \n Lesson',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'You don have any trading lessons yet create one to get started',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        CustomButton(
                          text: 'Add Your First Lesson',
                          onTap: () {
                            setState(() {
                              list_visibility = true;
                              card_visibility = false;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Visibility(
              visible: list_visibility,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Center(
                  //   child: Text('Lessons',style: TextStyle(fontWeight: FontWeight.bold),),
                  // ),
                  Center(
                      child: StackButton(
                    text: 'Add a new Lesson',
                    icon: Icons.add,
                    onTap: () {
                      setState(() {
                        list_visibility = true;
                        card_visibility = false;
                      });
                    },
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  FilterSearchRow(),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Lessons',
                          style: TextStyle(
                              color: _state ? Colors.grey : Colors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Switch(
                            value: _state,
                            onChanged: (state) {
                              setState(() {
                                _state = state;
                              });
                            }),
                        Text(
                          'Subscribers',
                          style: TextStyle(
                              color: !_state ? Colors.grey : Colors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) => LessonCard(),
                    itemCount: 2,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Leaders',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ListView.builder(

                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) => LeaderLessonCard(),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
