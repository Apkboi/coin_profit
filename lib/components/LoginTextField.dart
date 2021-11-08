import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField(
      {Key key, this.suffixIcon, this.preffixIcon, this.hint, this.hint_color, this.text_color,})
      : super(key: key);
  final Widget suffixIcon;
  final Widget preffixIcon;
  final String hint;
  final Color hint_color;
  final Color text_color;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          TextField(
            style: TextStyle(fontSize: 15,color: text_color),
            decoration: InputDecoration(
                prefixIcon: preffixIcon,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue)),
                hintText: hint,
                hintStyle: TextStyle(fontSize: 12,color:hint_color ),
                suffixIcon:suffixIcon,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                fillColor: Colors.blue.shade50,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30))),
          ),
        ],
      ),
    );
  }
}
