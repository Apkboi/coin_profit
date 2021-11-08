import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackButton extends StatelessWidget {
  const StackButton(
      {Key key, @required this.text, @required this.icon, this.onTap})
      : super(key: key);
  final String text;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(clipBehavior: Clip.none, children: [
        Container(

          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.cyanAccent, Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
          left: -15,
          top: 0,
          bottom: 0,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Container(
                height: 60,
                width: 60,
                child: Icon(
                  icon,
                  size: 12,
                )),
          ),
        )
      ]),
    );
  }
}
