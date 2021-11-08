import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/WalletScreen.dart';
import 'package:hotel_app/widgets/SearchTextField.dart';
import 'package:hotel_app/widgets/WalletsList.dart';

class SelectWalletScreeen extends StatefulWidget {
  @override
  _SelectWalletScreeenState createState() => _SelectWalletScreeenState();
}

class _SelectWalletScreeenState extends State<SelectWalletScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Select Wallet',
          style: TextStyle(color: Colors.black45, fontSize: 12),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black45,
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Search Wallet Or Exchange ',
                style:
                    TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SearchTextField(
                icon_color: Colors.blue,
                text_color: Colors.grey,
                hint: 'Search Wallet or Exchange',
              ),
            ),
            SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                clipBehavior: Clip.hardEdge,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) => WalletsList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
