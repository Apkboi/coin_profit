import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/TransactionHistoryScreen.dart';
import 'package:hotel_app/widgets/SearchTextField.dart';

import '../components/AboutCard.dart';
import '../components/LeaderProfileCard.dart';
import '../components/NotesCard.dart';
import '../components/SignalCard.dart';
import '../components/SubscribersCard.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  bool _state = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 10,
              ),
              LeaderProfileCard(),
              SignalCard(),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: SubscribersCard()),
                  Expanded(child: SubscribersCard()),
                  Expanded(child: SubscribersCard()),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TransactionHistoryScreen(),
                    ));
                  },
                  child: Text(
                    'View Trade History',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                  ),
                  color: Colors.blue.shade100,
                  shape: StadiumBorder(),
                  height: 30,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              AboutCard(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Market Views / Thoughts',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(child: SearchTextField()),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Icon(
                          Icons.assignment_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Notes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Show',
                    style:
                        TextStyle(color: !_state ? Colors.blue : Colors.black),
                  ),
                  Switch(
                    dragStartBehavior: DragStartBehavior.start,
                    value: _state,
                    onChanged: (state) {
                      setState(() {
                        _state = state;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                  Text(
                    'Hidden',
                    style:
                        TextStyle(color: _state ? Colors.blue : Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Today',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              NotesCard(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'YesterDay',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              NotesCard()
            ],
          ),
        ),
      ),
    );
  }
}
