import 'package:flutter/material.dart';
import 'package:hotel_app/Tabs/TradeLessonTab.dart';
import 'package:hotel_app/Tabs/TradePlannerTab.dart';

class PlannerScreen extends StatefulWidget {
  const PlannerScreen({Key key}) : super(key: key);

  @override
  _PlannerScreenState createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
   int tabIndex = 0;
  List labels = [
    'Planner','Trade Lessons'
  ];
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [


          Center(
            child: Column(
              children: [
                SizedBox(height: 15,),
                Text(labels[tabIndex],style: TextStyle(fontWeight: FontWeight.bold),),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  height: 45,
                  width: 250,
                  child: TabBar(
                    onTap: (index){
                      setState(() {
                        tabIndex = index;
                      });
                    },
                    labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.blue,

                    indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                    Tab(

                      text: 'Trade Planner',
                    ),
                    Tab(
                      text: 'Trade Lessons',
                    )
                  ]),
                ),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(children: [
                    TradePlannerTab(),
              TradeLessonTab()
            ]),
          )
        ],
      ),
    );
  }
}
