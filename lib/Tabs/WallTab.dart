import 'package:flutter/material.dart';
import 'package:hotel_app/components/LeaderNoteCard.dart';
import 'package:hotel_app/components/NotesCard.dart';
import 'package:hotel_app/components/WallSignalCard.dart';
import 'package:hotel_app/widgets/StackButton.dart';

class WallTab extends StatelessWidget {
  const WallTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text(
              'Your Timeline Shows Latest Thoughts and Signals From Those YOu Are Following ',

             style: TextStyle(fontWeight: FontWeight.bold,wordSpacing: 1,letterSpacing: 0.5,fontSize: 12),
            ),
            SizedBox(height: 20,),
            StackButton(text: 'Add New Thoughts', icon: Icons.add,),
            SizedBox(height: 10,),
            WallSignalCard(),
            SizedBox(height: 10,),
            Text('Notes',style: TextStyle(fontWeight: FontWeight.bold),),
            LeaderNoteCard(),
          ],
        ),
      ),
    );
  }
}
