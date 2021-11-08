import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/SearchTextField.dart';
class FilterSearchRow extends StatelessWidget {
  const FilterSearchRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: SearchTextField(hint: 'Search by name or username',)),
        Card(
          elevation: 5,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: 40,
            width: 40,
            child: Center(
              child: Icon(
                Icons.sort,
                color: Colors.black,
                size: 15,
              ),
            ),
          ),
        )
      ],
    );
  }
}
