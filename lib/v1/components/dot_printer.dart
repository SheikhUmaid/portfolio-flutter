import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DottedContainer extends StatelessWidget {
  DottedContainer(
      {super.key, this.bg = Colors.black, this.dotsColor = Colors.white});
  Color bg;
  Color dotsColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: DottedPainter(dotsColor: dotsColor),
      ),
    );
  }
}

class DottedPainter extends CustomPainter {
  DottedPainter({this.dotsColor = Colors.white});
  Color dotsColor;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = dotsColor
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
