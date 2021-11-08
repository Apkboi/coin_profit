import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key key, this.text, this.onTap, this.icon}) : super(key: key);
  final String text;
  final Function onTap;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,

      child: ElevatedButton(
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Icon(icon,size: 12,),
            SizedBox(width: 2,),
            Text(
              '$text',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(

            elevation: 5,
            shadowColor: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
