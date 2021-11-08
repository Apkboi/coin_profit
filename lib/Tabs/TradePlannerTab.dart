import 'package:flutter/material.dart';
import 'package:hotel_app/components/BigTextField.dart';
import 'package:hotel_app/components/LabeledTextField.dart';
import 'package:hotel_app/widgets/CustomButton.dart';

class TradePlannerTab extends StatelessWidget {
  const TradePlannerTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(30),
        child: Container(
          padding: EdgeInsets.all(18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Make Your Plan',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              LabeledTextField( suffixIcon:  Card(
                margin: EdgeInsets.all(5),
                shape: StadiumBorder(),
                child: Icon(
                  Icons.more_horiz,
                  size: 12,
                ),
              ),hint: 'csc',label: 'Select Date',),
              LabeledTextField(
                label: 'Select Coin',
                suffixIcon: Card(

                  margin: EdgeInsets.all(5),
                  shape: StadiumBorder(),
                  child: Icon(
                    Icons.more_horiz,
                    size: 12,
                  ),
                ),
                preffixIcon: Card(
                  color: Colors.black,
                  margin: EdgeInsets.all(5),
                  shape: StadiumBorder(),
                  child: Icon(
                    Icons.more_horiz,
                    size: 12,
                  ),
                ),
              ),

              LabeledTextField(label: 'Average Entry Price',),
              LabeledTextField(label: 'Trade Amount',),
              LabeledTextField(label: 'Stop Limit',),
              LabeledTextField(label: 'First TP',),
              LabeledTextField(label: 'Second TP',),
              LabeledTextField(label: 'Third TP',),
              SizedBox(height: 15,),
              BigTextField(label: 'Notes', preffixIcon:Card(
                margin: EdgeInsets.all(5),
                shape: StadiumBorder(),
                child: Icon(
                  Icons.more_horiz,
                  size: 12,
                ),
              ) ,),
              SizedBox(height: 15,),
              Center(child: CustomButton(text: 'Save',)),
            ],
          ),
        ),
      ),
    );
  }
}
