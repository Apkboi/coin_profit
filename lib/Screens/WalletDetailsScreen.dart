import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/ShareScreen.dart';
import 'package:hotel_app/components/TransactionsCard.dart';
import 'package:hotel_app/components/WalletDetailsCard.dart';
import 'package:hotel_app/widgets/StackButton.dart';

class WalletDetailsScreen extends StatefulWidget {
  @override
  _WalletDetailsScreenState createState() => _WalletDetailsScreenState();
}

class _WalletDetailsScreenState extends State<WalletDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        title: Text(
          'Ethereum (eth) ',
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(clipBehavior: Clip.none, children: [
                WalletDetailsCrd(),
                Positioned(
                    right: 0,
                    left: 0,
                    bottom: -8,
                    child: Center(
                        child: StackButton(
                          text: 'Share',
                          icon: Icons.share,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ShareScreen(),));
                          },
                        )))
              ]),
              SizedBox(
                height: 30,
              ),
              Text(
                'Transactions',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Aug 2021 22:22:1 GMT',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) => TransactionsCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
