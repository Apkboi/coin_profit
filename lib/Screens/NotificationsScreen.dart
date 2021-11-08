import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/CustomButton.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {}))
        ],
        backgroundColor: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
      ),
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.blue.shade100,
              border: Border.fromBorderSide(
                  BorderSide(color: Colors.blue, width: 1.5))),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black54),
                  ),
                  SizedBox(width: 10,),
                  CustomButton(text: '2 new ',onTap: (){},)
                ],
              ),
              Row()
            ],
          ),
        ),
      ),
    );
  }
}
