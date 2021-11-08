import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Tabs/ExploreTab.dart';
import 'package:hotel_app/Tabs/SignalTab.dart';
import 'package:hotel_app/Tabs/WallTab.dart';

import '../Tabs/ProfileTab.dart';

class LeaderScreen extends StatelessWidget {
  const LeaderScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 20,
            height: 35,
            padding: EdgeInsets.all(7),
            child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(color: Colors.grey, fontSize: 11),
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Explore',
                  ),
                  Tab(
                    text: 'Wall',
                  ),
                  Tab(
                    text: 'Signals',
                  ),
                  Tab(
                    text: 'My Profile',
                  ),
                ]),
          ),
          Expanded(
            child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                dragStartBehavior: DragStartBehavior.start,
                children: [
                  ExploreTab(),
                  WallTab(),
                  SignalTab(),
                  ProfileTab(),
                ]),
          ),
        ],
      ),
    );
  }
}
