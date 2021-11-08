import 'package:flutter/material.dart';
class SmallChip extends StatelessWidget {
 final String text ;
final IconData start_icon ;
 final IconData end_icon ;
 final Color color ;
 final Color text_color ;
 final Color icon_color ;





 const SmallChip({Key key, this.text, this.start_icon, this.end_icon, this.color, this.text_color, this.icon_color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0,
      shape: StadiumBorder(),
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 5

            ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            start_icon!=null?Icon(start_icon,color: icon_color,size: 15,):SizedBox.shrink(),
            SizedBox(width: 1,),
            Text(
              text,
              style: TextStyle(
                  fontSize: 10,
                  color: text_color,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(width: 1,),
            end_icon!=null?Icon(end_icon,color: icon_color,size: 15,):SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
