import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField(
      {Key key, this.suffixIcon, this.preffixIcon, this.hint, this.label})
      : super(key: key);
  final Widget suffixIcon;
  final Widget preffixIcon;
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
             label!= null? label:'',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
                prefixIcon: preffixIcon,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue)),
                hintText: hint,
                hintStyle: TextStyle(fontSize: 12),
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
