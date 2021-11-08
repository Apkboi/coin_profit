import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        
        padding: EdgeInsets.all(14),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Here You can Add the description About the person so that other'
              ' people can read and understand who is the person  ',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                  wordSpacing: 1),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage('assets/picture.JPG',),fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.favorite,color: Colors.red,size: 15,),
                SizedBox(width: 5,),
                Text('30')
              ],),
            )

          ],
        ),
      ),
    );
  }
}
