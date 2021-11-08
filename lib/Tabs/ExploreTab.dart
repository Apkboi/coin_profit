import 'package:flutter/material.dart';
import 'package:hotel_app/components/FilterSearchRow.dart';
import 'package:hotel_app/components/LeaderCard.dart';
import 'package:hotel_app/widgets/SearchTextField.dart';
class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
            FilterSearchRow(),
              SizedBox(height: 12,),
              LeaderCard(),
              SizedBox(height: 20,),
              LeaderCard(),
              SizedBox(height: 20,),
              LeaderCard(),


            ],
          ),
        ));
  }
}
