import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/HomeScreen.dart';
import 'package:hotel_app/widgets/CustomButton.dart';

class WalletsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: StadiumBorder(),
      child: Container(
        padding: EdgeInsets.all(8),

        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.assessment, color: Colors.orangeAccent,),
                SizedBox(width: 10,),
                Text('Binance', style: TextStyle(color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),),
              ],
            ),

            CustomButton(onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomeScreen(),));
            }, text: 'Connect',)
          ],),
      ),
    );
  }
}
