import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/HomeScreen.dart';
import 'package:hotel_app/widgets/CustomButton.dart';

class RefferalSummaryItem extends StatelessWidget {
  final String tittle;
  final String value;
  final Color btn_color;

  const RefferalSummaryItem(
      {Key key, this.tittle, this.value, this.btn_color = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade50,
      elevation: 0,
      shape: StadiumBorder(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tittle,
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            CustomButton(
              color: btn_color,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
              },
              text: value,
            )
          ],
        ),
      ),
    );
  }
}
