import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/CoinIcon.dart';

class HistoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              CoinIcon(
                size: 40,
                bg_color: Colors.blue.shade50,
                coin_icon: Icons.arrow_right_alt_outlined,
                icon_color: Colors.blue,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Etheruem USDT ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Row(
                          children: [
                            Text(
                              'N -233',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            CoinIcon(
                              size: 25,
                              bg_color: Colors.black54,
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Binance ETH ',style: TextStyle(color: Colors.grey),),
                        Row(
                          children: [
                            Text(
                              '-255 USDT',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            CoinIcon(
                              bg_color: Colors.orangeAccent,
                              size: 25,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
