import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/NotificationsScreen.dart';
import 'package:hotel_app/Tabs/ProfileTab.dart';
import 'package:hotel_app/Screens/LeaderScreen.dart';
import 'package:hotel_app/Screens/PlannerScreen.dart';
import 'package:hotel_app/Screens/PortfolioScreen.dart';
import 'package:hotel_app/Screens/WalletScreen.dart';
import 'package:hotel_app/components/AboutCard.dart';
import 'package:hotel_app/components/LeaderProfileCard.dart';
import 'package:hotel_app/components/NotesCard.dart';
import 'package:hotel_app/components/SideNavigation.dart';
import 'package:hotel_app/components/SignalCard.dart';
import 'package:hotel_app/components/SubscribersCard.dart';

class HomeScreen extends StatefulWidget {
  // final _scaffoldKey = GlobalKey<ScaffoldState>();
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  bool show = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final tabs = [
    PortfolioScreen(),
    WalletScreen(),
    PlannerScreen(),
    LeaderScreen()
  ];

  @override
  Widget build(BuildContext _context) {
    return MaterialApp(
        color: Colors.blue,
        home: Scaffold(
          drawerScrimColor: Colors.blue.shade50.withOpacity(0.6),
          endDrawer: SideNavigation(),
          key: _scaffoldKey,
          drawerEnableOpenDragGesture: false,
          onDrawerChanged: (state) {},
          // drawer:,
          backgroundColor: Colors.blue.shade50,
          appBar: AppBar(
            leading: Icon(
              Icons.account_balance_sharp,
              color: Colors.blue,
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: IconButton(
                      splashRadius: 20,
                      icon: Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.grey,
                      ),
                      onPressed: () =>

                          // Scaffold.of(_context).openDrawer()
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NotificationsScreen(),
                          ))))
            ],
            backgroundColor: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedLabelStyle: TextStyle(fontSize: 12),
              iconSize: 18,
              elevation: 5,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  // _scaffoldKey.currentState.openDrawer();
                  // index != 4
                  //     ? _currentIndex = index
                  //     : _currentIndex = _currentIndex;
                  index == 4 ? openDrawer() : _currentIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.wallet_travel), label: 'Portfolio'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    label: 'Wallets'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.event_note_outlined), label: 'Planner'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.wine_bar), label: 'Leader'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz_rounded), label: 'more')
              ]),
          body: _currentIndex != 4 ? tabs[_currentIndex] : () {},
        ));
  }

  openDrawer() => {_scaffoldKey.currentState.openEndDrawer()};
}
