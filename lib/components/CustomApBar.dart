import 'package:flutter/material.dart';
class CustomApBar extends StatelessWidget {
  const CustomApBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Transaction History',
        style: TextStyle(color: Colors.black45, fontSize: 12),
      ),
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black45,
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10))),
    ) ;
  }
}
