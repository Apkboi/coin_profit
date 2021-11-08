import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key key, this.hint, this.text_color, this.icon_color}) : super(key: key);
  final String hint;
  final Color text_color;
  final Color icon_color;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        style: TextStyle(color: text_color),
        decoration: InputDecoration(
            hintText: '$hint',
            hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
            contentPadding: EdgeInsets.zero,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.search,color: icon_color,),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
