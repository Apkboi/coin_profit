import 'package:flutter/material.dart';

class LeaderNoteCard extends StatelessWidget {
  const LeaderNoteCard({Key key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    backgroundImage: AssetImage('assets/picture.JPG'),
                  ),
                  SizedBox(
                    width:8,
                  ),
                  Text(
                    'Emmanuel ohworoko',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),

              child: Text(
                'Here You can Add the description About the person so that other'
                    ' people can read and understand who is the person  ',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1,
                    wordSpacing: 1),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('assets/picture.JPG',),fit: BoxFit.cover)),
              ),
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
