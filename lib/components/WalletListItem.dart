import 'package:flutter/material.dart';

class WalletListitem extends StatelessWidget {
  const WalletListitem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      // margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Binance',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    Text(
                      'Main Wallet',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
                Card(
                  color: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'N 56,776',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.more_horiz,color: Colors.grey,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
