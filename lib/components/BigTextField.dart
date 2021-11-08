import 'package:flutter/material.dart';

class BigTextField extends StatelessWidget {
  const BigTextField(
      {Key key, this.suffixIcon, this.preffixIcon, this.hint, this.label})
      : super(key: key);
  final Widget suffixIcon;
  final Widget preffixIcon;
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              TextField(

                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Leave Your Note Here',
                    hintStyle: TextStyle(fontSize:12 ),
                    fillColor: Colors.blue.shade50,
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(children: [
                  Card(
                    margin: EdgeInsets.all(5),
                    shape: StadiumBorder(),
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.attachment_outlined,
                        size: 12,
                      ),
                    ),
                  ),
                  Text('Attatch Image',style: TextStyle(fontSize: 12),)
                ]),
              )
            ],
          ),
        )
      ],
    );
  }
}
