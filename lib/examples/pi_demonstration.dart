import 'dart:math' as math;
import 'package:beauty_of_math/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PiDemonstration extends StatelessWidget {
  const PiDemonstration({super.key});

  @override
  Widget build(BuildContext context) {
    const tau = 2 * math.pi;
    return AnimationPlayer(
      width: 400,
      height: 400,
      duration: const Duration(seconds: 4),
      builder: (context, animation) {
        return CustomPaint(
          painter: CirclePainter(radian: animation * tau),
        );
      },
    );
  }
}

class CirclePainter extends CustomPainter {
  const CirclePainter({this.radian = 0});

  final double radian;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.pink
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromLTWH(6, 6, size.width - 12, size.height - 12),
      0,
      radian,
      false,
      paint,
    );

    final textPaint = TextPainter(
      text: TextSpan(
        text: '${radian.toStringAsFixed(2)}rad'
            '\n${(radian / math.pi).toStringAsFixed(2)}π'
            '\n${(radian * 180 / math.pi).toStringAsFixed(2)}°',
        style: const TextStyle(
          color: Colors.lightBlue,
          fontSize: 24,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    textPaint.paint(
      canvas,
      Offset(
        size.width / 2 - textPaint.width / 2,
        size.height / 2 - textPaint.height / 2,
      ),
    );
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => oldDelegate.radian != radian;
}
