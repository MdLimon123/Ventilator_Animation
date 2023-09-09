
import 'package:flutter/material.dart';

class BatshapePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   var paint = Paint()
       ..color = Colors.deepPurple
       ..style = PaintingStyle.fill;

   var path = Path()
       ..moveTo(0, size.height * 0.2) // Paint superieur gauche
       ..quadraticBezierTo(size.width /2, 10, size.width, size.height * 0.2)// Courbe superieure
       ..lineTo(size.width * 0.8, size.height * 0.8)
       ..quadraticBezierTo(size.width/ 2, size.height, 5, size.height * 0.8)
       ..close();

   canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {

    return false;
  }

}