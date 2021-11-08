import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaderLessonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child:ClipOval(child:  Image(image: AssetImage('assets/picture.JPG',),fit: BoxFit.cover,),),
              ),
              SizedBox(width: 5,),
              Text('Emmanuel Emmanuel',style: TextStyle(color: Colors.blue,),)
            ], ),
            SizedBox(height: 8,),
            Text('My Win',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('thur sep 1938 12:45 pm',style: TextStyle(fontSize: 12,color: Colors.grey)),
                Icon(Icons.more_horiz,color: Colors.grey,)
              ],
            )

          ],
        ),
      ),
    );
  }
}
