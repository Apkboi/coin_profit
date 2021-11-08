import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetCard extends StatelessWidget {
final Function onItemClicked;

  const AssetCard({Key key, this.onItemClicked}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
            shadowColor: Colors.blue,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: onItemClicked,
              child: Container(

                padding: EdgeInsets.all(12),

                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ethereum (Eth) ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Card(
                            shape: StadiumBorder(),
                            color: Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Text(
                                '4564',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Avr.entery :'),
                            Text(
                              'N 10,99',
                              style: TextStyle(
                                  color: Colors.blue, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Text(
                          'N 10,99',
                          style: TextStyle(
                               fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Market :'),
                            Text(
                              'N 10,99',
                              style: TextStyle(
                                  color: Colors.blue, fontWeight: FontWeight.w500),
                            ),
                            Card(
                              elevation: 0,
                              shape: StadiumBorder(),
                              color: Colors.red.shade50,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                child: Text(
                                  '-4564%',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          '20 ETH',
                          style: TextStyle(
                            color: Colors.grey,
                              fontSize: 12),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: -5,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 25,
            ))
      ],
    );
  }
}
