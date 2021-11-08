import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WallSignalCard extends StatelessWidget {
  const WallSignalCard(
      {Key key,
      @required this.first_entry,
      @required this.second_entry,
      @required this.stop_loss,
      @required this.type,
      @required this.tp_1,
      @required this.tp_2,
      @required this.tp_3,
      @required this.user_img,
      @required this.user_name,
      @required this.pair,
      @required this.wallet})
      : super(key: key);
  final String first_entry;
  final String second_entry;
  final String stop_loss;
  final String type;
  final String tp_1;
  final String tp_2;
  final String tp_3;
  final String user_img;
  final String user_name;
  final String pair;
  final String wallet;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Card(
                  color: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.grey.shade100,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'BNB / USDT',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Binance',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Entry :',
                        style: MediaQuery
                            .of(context)
                            .size
                            .width > 360 ? TextStyle(
                          fontSize: 12,
                        ):TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        ' $first_entry - $second_entry',
                        overflow: TextOverflow.visible,
                        maxLines: 1,

                        style: MediaQuery
                            .of(context)
                            .size
                            .width > 360 ? TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold):TextStyle(
                            fontSize: 10,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(

                  children: [
                    Text(
                      'StopLoss :',
                      style: MediaQuery
                          .of(context)
                          .size
                          .width > 360 ? TextStyle(
                        fontSize: 12,
                      ):TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      ' $stop_loss',
                      overflow: TextOverflow.ellipsis,

                      maxLines: 1,
                      style: MediaQuery
                          .of(context)
                          .size
                          .width > 360 ? TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                      ):TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Type :',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  ' $type',
                  style:
                  TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Targets',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(18),
                      child: Column(
                        children: [
                          Text(
                            'TP 1',
                            style: TextStyle(fontWeight:FontWeight.bold,fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$tp_1',

                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(18),
                      child: Column(
                        children: [
                          Text(
                            'TP 1',
                            style: TextStyle(fontWeight:FontWeight.bold,fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$tp_1',
                            textAlign: TextAlign.center,

                            softWrap: true,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(18),
                      child: Column(
                        children: [
                          Text(
                            'TP 1',
                            style: TextStyle(fontWeight:FontWeight.bold,fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$tp_1',
                            textAlign: TextAlign.center,

                            softWrap: true,

                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('assets/picture.JPG'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '$user_name',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
