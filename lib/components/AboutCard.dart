import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(18),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.edit,
                  size: 15,
                  color: Colors.blue,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
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
              height:22 ,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Subscribe N2333/m',style: TextStyle(fontSize: 12),),
              style: ElevatedButton.styleFrom(
               primary: Colors.green,
                shape: StadiumBorder()
              ),
            )
          ],
        ),
      ),
    );
  }
}
