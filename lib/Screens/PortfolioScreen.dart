import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_app/Screens/WalletDetailsScreen.dart';
import 'package:hotel_app/components/AssetCard.dart';
import 'package:hotel_app/widgets/CustomButton.dart';
import 'package:hotel_app/widgets/DotIndicator.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  var listItem = ['item', 'itemb', 'itemc', 'itemd'];
  String _value;
  int _currentIndex= 0;
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'My Portfolio',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.account_balance_wallet_rounded,
                              size: 30,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'All Wallets',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Card(
                          elevation: 0,
                          color: Colors.blue.shade50,
                          shape: StadiumBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                title: Text('Total Balance'),
                subtitle: Text(
                  'N 454,5454',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.accessible_rounded),
              ),
            ),
           Container(
             height: 250,
             child: PageView(
            onPageChanged: (index){
              setState(() {
                _currentIndex =index;
              });
            },
               scrollDirection: Axis.horizontal,
               children: [
               Card(
                 elevation: 0,
                 child: Container(
                   padding: EdgeInsets.all(10),
                   height: 250,
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(
                             'Monthly Earnings',
                             style: TextStyle(fontWeight: FontWeight.w400),
                           ),
                           Expanded(
                             child: DropdownButton(

                               // hint: Text('This week',style: TextStyle(color: Colors.blue),),
                                 isExpanded: true,
                                 onChanged: (newValue) {
                                   setState(() {
                                     _value = newValue.toString();
                                   });
                                 },
                                 items: listItem
                                     .map((e) => DropdownMenuItem(child: Text(e)))
                                     .toList()),
                           )
                         ],
                       )
                     ],
                   ),
                 ),
               ),
                 Card(
                   elevation: 0,
                   child: Container(
                     padding: EdgeInsets.all(10),
                     height: 250,
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               'Monthly Earnings',
                               style: TextStyle(fontWeight: FontWeight.w400),
                             ),
                             Expanded(
                               child: DropdownButton(

                                 // hint: Text('This week',style: TextStyle(color: Colors.blue),),
                                   isExpanded: true,
                                   onChanged: (newValue) {
                                     setState(() {
                                       _value = newValue.toString();
                                     });
                                   },
                                   items: listItem
                                       .map((e) => DropdownMenuItem(child: Text(e)))
                                       .toList()),
                             )
                           ],
                         )
                       ],
                     ),
                   ),
                 ),
                 Card(
                   elevation: 0,
                   child: Container(
                     padding: EdgeInsets.all(10),
                     height: 250,
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               'Monthly Earnings',
                               style: TextStyle(fontWeight: FontWeight.w400),
                             ),
                             Expanded(
                               child: DropdownButton(

                                 // hint: Text('This week',style: TextStyle(color: Colors.blue),),
                                   isExpanded: true,
                                   onChanged: (newValue) {
                                     setState(() {
                                       _value = newValue.toString();
                                     });
                                   },
                                   items: listItem
                                       .map((e) => DropdownMenuItem(child: Text(e)))
                                       .toList()),
                             )
                           ],
                         )
                       ],
                     ),
                   ),
                 ),
             ],),
           ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 7,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0),
                      child: DotIndicator(isActive: index ==
                          _currentIndex ? true : false, size: 7,),
                    ),),
            ),

            SizedBox(
              height: 10,
            ),
            CustomButton(
              text: 'Market',
              onTap: () {},
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Current Assets '),
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
                        'Highest Gainers',
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                      // PopupMenuButton(itemBuilder: (context) => ,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  AssetCard(
                    onItemClicked: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => WalletDetailsScreen(),));
                    },
                  ),
            )
          ],
        ),
      ),
    );
  }
}
