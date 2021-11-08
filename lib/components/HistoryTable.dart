import 'package:flutter/material.dart';

class HistoryTable extends StatefulWidget {
  @override
  _HistoryTableState createState() => _HistoryTableState();
}

class _HistoryTableState extends State<HistoryTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(

          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                DataTable(
                  showBottomBorder: true,
                    columns: [
                  DataColumn(label: Text('S/N',style: TextStyle(color: Colors.blue,fontSize: 12),)),
                  DataColumn(label: Text('Date',style: TextStyle(color: Colors.blue,fontSize: 12),)),
                  DataColumn(label: Text('Name',style: TextStyle(color: Colors.blue,fontSize: 12),)),
                  DataColumn(label: Text('AMT',style: TextStyle(color: Colors.blue,fontSize: 12),)),
                  DataColumn(label: Text('Mail',style: TextStyle(color: Colors.blue,fontSize: 12),))
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text('1',style: TextStyle(fontSize: 12),)),
                    DataCell(Text('Stephen',style: TextStyle(fontSize: 12),)),
                    DataCell(Text('Actor',style: TextStyle(fontSize: 12),),),
                    DataCell(Text('Actor',style: TextStyle(fontSize: 12),),),
                    DataCell(Text('Actor',style: TextStyle(fontSize: 12),),),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('1',style: TextStyle(fontSize: 12),)),
                    DataCell(Text('Stephen',style: TextStyle(fontSize: 12),)),
                    DataCell(Text('Actor',style: TextStyle(fontSize: 12),),),
                    DataCell(Text('Actor',style: TextStyle(fontSize: 12),),),
                    DataCell(Text('Actor',style: TextStyle(fontSize: 12),),),
                  ]),

                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
