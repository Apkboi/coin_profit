import 'package:flutter/material.dart';
import 'package:hotel_app/components/WalletListItem.dart';
import 'package:hotel_app/widgets/SearchTextField.dart';
import 'package:hotel_app/widgets/StackButton.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(
              child: Text(
                'Your Wallet',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            StackButton(text: 'Add New Wallet', icon: Icons.add),
            SizedBox(
              height: 15,
            ),
            SearchTextField(
              hint: 'Search Wallet',
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) => WalletListitem(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
