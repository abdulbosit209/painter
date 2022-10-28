import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Center(
        child: Container(
          color: Colors.grey.withOpacity(0.9),
          child: CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: myPaint(),
          ),
        )
      ),
    );
  }
}
class myPaint extends CustomPainter {

  // @override
  // void paint(Canvas canvas, Size size) {
  //   Paint paint = Paint();
  //   paint.color = Colors.yellow;
  //   paint.strokeWidth = 2.0;
  //   Path path = Path();
  //   path.moveTo(0, size.height / 2);
  //   path.quadraticBezierTo(size.width * 0.5, size.width * 0, size.width * 0.7, size.width * 0.5);
  //   path.quadraticBezierTo(size.width * 0.7, size.width * 0, size.width * 0.7, size.width * 0.5);
  // }
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
      paint.color = Colors.white;
      paint.strokeWidth = 15.0;
      paint.strokeCap = StrokeCap.round;

      Paint paint2 = Paint()..color = Colors.black;

      Paint paint3 = Paint()..color = Colors.orange;
      paint3.strokeWidth = 10.0;
      paint3.strokeCap = StrokeCap.round;


      canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.8), 150, paint);
      canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.5), 120, paint);
      canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.4), 10, paint2);
      canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.6), 10, paint2);
      canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.27), 80, paint);
      canvas.drawCircle(Offset(size.width * 0.42, size.height * 0.25), 10, paint2);
      canvas.drawCircle(Offset(size.width * 0.58, size.height * 0.25), 10, paint2);
      canvas.drawLine(Offset(20, size.height * 0.4), Offset(size.width * 0.4, size.height * 0.5), paint);
      canvas.drawLine(Offset(size.width - 20, size.height * 0.4), Offset(size.width * 0.4, size.height * 0.5), paint);
      canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.5), 10, paint2);
      canvas.drawLine(Offset(size.width * 0.4, size.height * 0.3), Offset(size.width * 0.5, size.height * 0.28), paint3);
      canvas.drawLine(Offset(size.width * 0.4, size.height * 0.3), Offset(size.width * 0.5, size.height * 0.3), paint3);

    final arc1 = Path();
    arc1.moveTo(size.width * 0.37, size.height * 0.32);
    arc1.arcToPoint(
      Offset(size.width * 0.6, size.height * 0.32),
      radius: Radius.circular(80),
      clockwise: false,
    );

    canvas.drawPath(arc1, Paint()..color = Colors.black.withOpacity(0.3));


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}