import 'package:flutter/material.dart';
import 'package:portfolio/utlis/media_query.dart';

class DottedContainer extends StatelessWidget {
  const DottedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: DottedPainter(),
      ),
    );
  }
}

class DottedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(.2)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    const dotSpacing = 40.0;
    const dotRadius = 1.5;

    for (var x = 0; x < size.width; x += dotSpacing as int) {
      for (var y = 0; y < size.height; y += dotSpacing as int) {
        canvas.drawCircle(
          Offset(x as double, y as double),
          dotRadius,
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(DottedPainter oldDelegate) => true;
}
