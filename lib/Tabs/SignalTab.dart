import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/components/FilterSearchRow.dart';
import 'package:hotel_app/components/LeaderSignalCard.dart';
import 'package:hotel_app/components/UserSignalCard.dart';
import 'package:hotel_app/widgets/CustomButton.dart';

class SignalTab extends StatefulWidget {
  const SignalTab({Key key}) : super(key: key);

  @override
  _SignalTabState createState() => _SignalTabState();
}

class _SignalTabState extends State<SignalTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: CustomButton(
              text: 'Send New Signal',
            )),
            SizedBox(
              height: 16,
            ),
            FilterSearchRow(),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Signals',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'Sort By',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Newest',
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            UserSignalCard(
                first_entry: 'N76767',
                second_entry: 'N76767',
                stop_loss: 'N76767',
                type: ' Short Term',
                tp_1: 'N76767',
                tp_2: 'N76767',
                tp_3: 'N76767',
                user_img: '',
                user_name: 'Victor Abraham',
                pair: 'BNB/USDT',
                wallet: 'Binance'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Leaders Signal',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'fri 1sept 2021',
                style: TextStyle(fontSize: 12),
              ),
            ),
            LeaderSignalCard(
                first_entry: 'N76767',
                second_entry: 'N76767',
                stop_loss: 'N76767',
                type: ' Short Term',
                tp_1: 'N76767',
                tp_2: 'N76767',
                tp_3: 'N76767',
                user_img: '',
                user_name: 'Victor Abraham',
                pair: 'BNB/USDT',
                wallet: 'Binance')
          ],
        ),
      ),
    );
  }
}
