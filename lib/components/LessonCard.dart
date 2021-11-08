import 'package:flutter/material.dart';
class LessonCard extends StatelessWidget {
  const LessonCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text('First Lesson',style: TextStyle(color: Colors.blue),),
        subtitle: Text('thur sep 1938 12:45 pm',style: TextStyle(fontSize: 12),),
        trailing: Icon(Icons.more_horiz),
      ),
    );
  }
}
