import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key key, this.text, this.onTap, this.color=Colors.blue}) : super(key: key);
  final String text;
  final Function onTap;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Container(

      height: 30,

      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          '$text',
          style: TextStyle(fontSize: 12),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
            elevation: 5,
            shadowColor:color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
