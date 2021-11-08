import 'package:flutter/material.dart';
import 'package:hotel_app/components/WelcomeCard.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Stack(
        children: [
          ClipPath(
            clipper: TriangleClipper(),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [],
                color: Colors.blue,
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // child: CustomPaint(
              //   size: Size(MediaQuery.of(context).size.height,(MediaQuery.of(context).size.height*0.625).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              //   painter: CurveDPainter(),
              // ),
            ),
          ),
          Center(
            child: WelcomeCard(),
          )
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3775000, size.height * 0.0040000);
    path_0.quadraticBezierTo(
        size.width * 0.8406250, size.height * 0.0025000, size.width, 0);
    path_0.lineTo(size.width, size.height * 0.9200000);
    path_0.quadraticBezierTo(size.width * 0.5247750, size.height * 0.8051800,
        size.width * 0.5050000, size.height * 0.3780000);
    path_0.cubicTo(
        size.width * 0.4759500,
        size.height * 0.1778400,
        size.width * 0.4731250,
        size.height * 0.2845000,
        size.width * 0.3775000,
        size.height * 0.0040000);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CurveDPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3775000, size.height * 0.0040000);
    path_0.quadraticBezierTo(size.width * 0.8406250, size.height * 0.0025000,
        size.width, size.height * 0.0020000);
    path_0.lineTo(size.width, size.height * 0.9940000);
    path_0.quadraticBezierTo(size.width * 0.0943250, size.height * 0.6873000, 0,
        size.height * 0.2201800);
    path_0.cubicTo(
        size.width * -0.0571750,
        size.height * 0.0200200,
        size.width * 0.4731250,
        size.height * 0.2845000,
        size.width * 0.3775000,
        size.height * 0.0040000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(oldDelegate) {
    return true;
  }
}
