import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/CoinIcon.dart';
class SideNavItem extends StatelessWidget {
final String tittle;
final IconData icon;
final Function onTap;

  const SideNavItem({Key key, this.tittle, this.icon, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CoinIcon(
                icon_color: Colors.blue,
                size: 40,
                coin_icon: icon,
                bg_color: Colors.grey.shade50,

              ),
              SizedBox(
                width: 5,
              ),
              Text(
                tittle,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 6,),
        ],
      ),
    );
  }
}
