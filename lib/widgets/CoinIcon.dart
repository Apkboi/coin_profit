import 'package:flutter/material.dart';
class CoinIcon extends StatelessWidget {
  final IconData coin_icon;
  final Color bg_color;
  final Color icon_color;

  final double size;

  const CoinIcon({Key key, this.coin_icon, this.bg_color, this.icon_color, this.size}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: bg_color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size*0.50)
         ),
      child: Container(
        height: size,
        width: size,
        child: Center(
          child: Icon(
            coin_icon,
            color: icon_color,
            size: 15,
          ),
        ),
      ),
    );
  }
}
