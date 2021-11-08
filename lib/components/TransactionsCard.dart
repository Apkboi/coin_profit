import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/CoinIcon.dart';
import 'package:hotel_app/widgets/SmallChip.dart';

class TransactionsCard extends StatelessWidget {
  const TransactionsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CoinIcon(
                    size: 30,
                    coin_icon: Icons.bar_chart,
                    bg_color: Colors.black,
                    icon_color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ethereum Wallet',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),

                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: SmallChip(
                  text: '4445 ETH ',
                  color: Colors.green.shade50,
                  text_color: Colors.green,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    CoinIcon(
                      size: 30,
                      coin_icon: Icons.refresh,
                      bg_color: Colors.blue,
                      icon_color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ethereum Wallet',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            SmallChip(
                              text: 'Profit : N44,445 ',
                              color: Colors.green,
                              text_color: Colors.white,
                            ),
                            Text(
                              '+70%',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CoinIcon(
                    size: 30,
                    coin_icon: Icons.bar_chart,
                    bg_color: Colors.orangeAccent,
                    icon_color: Colors.white,
                  ),
                  Text(
                    'Binance USDT Wallet',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Column(
                    children: [],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallChip(
                      text: ' N -44456  ',
                      color: Colors.red.shade50,
                      text_color: Colors.red,
                    ),
                    SmallChip(
                      text: 'Fee : 4445 ETH / N65.6 ',
                      color: Colors.grey.shade50,
                      text_color: Colors.grey,
                      start_icon: Icons.label_outlined,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
