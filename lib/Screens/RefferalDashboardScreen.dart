import 'package:flutter/material.dart';
import 'package:hotel_app/components/CustomApBar.dart';
import 'package:hotel_app/components/HistoryTable.dart';
import 'package:hotel_app/components/RefferalSummaryItem.dart';
import 'package:hotel_app/widgets/CustomButton.dart';
import 'package:hotel_app/widgets/CustomIconButton.dart';

class RefferalDashboardScreen extends StatefulWidget {
  @override
  _RefferalDashboardScreenState createState() =>
      _RefferalDashboardScreenState();
}

class _RefferalDashboardScreenState extends State<RefferalDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black54),
        centerTitle: true,
        title: Text(
          'Refferal Dashboard',
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
        leadingWidth: 55,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
      ),
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Earn free crypto for free',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          softWrap: true,
                          text: TextSpan(children: [
                            TextSpan(
                              text:
                                  'Get 10% lifetime commission for every person you refer ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: 'coinprofit app',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text:
                                  ' Your friends also get 50% welcome bonus on their first upgrade ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          ])),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your unique reffereal ID username',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomIconButton(
                              icon: Icons.copy,
                              onTap: () {},
                              text: 'copy',
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your unique reffereal ID username',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'https/www.coinprofit.refferalId',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomIconButton(
                              icon: Icons.copy,
                              onTap: () {},
                              text: 'copy',
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Text(
                        'Refferal Summary',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.black),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      RefferalSummaryItem(
                        tittle: 'Total Refferals',
                        value: '4567',
                      ),
                      RefferalSummaryItem(
                        tittle: 'Active Refferals',
                        value: '44',
                      ),
                      RefferalSummaryItem(
                        tittle: 'Total Commision Earned',
                        value: 'N4,4546',
                      ),
                      RefferalSummaryItem(
                        tittle: 'Total Commision Withdrawn',
                        value: 'N5, 765',
                      ),
                      RefferalSummaryItem(
                        btn_color: Colors.green,
                        tittle: 'Active Commission',
                        value: '765',
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Center(
                        child: CustomButton(
                          text: 'Withdraw',
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            HistoryTable()
          ],
        ),
      ),
    );
  }
}
