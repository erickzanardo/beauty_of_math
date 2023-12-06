import 'dart:math' as math;

import 'package:beauty_of_math/widgets/widgets.dart';
import 'package:flutter/material.dart';

double decelerate(double t) {
  final v = 1.0 - t;
  return 1.0 - v * v;
}

class DecelerateInterpolationExample extends StatelessWidget {
  const DecelerateInterpolationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Translate'),
        DecelerateInterpolationTranslateExample(),
        SizedBox(height: 32),
        Text('Rotation'),
        DecelerateInterpolationRotateExample(),
      ],
    );
  }
}

class DecelerateInterpolationTranslateExample extends StatelessWidget {
  const DecelerateInterpolationTranslateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimationPlayer(
          builder: (context, animation) {
            return Transform.translate(
              offset: Offset(
                0,
                decelerate(animation) * -50,
              ),
              child: const Dash(),
            );
          },
        ),
      ],
    );
  }
}

class DecelerateInterpolationRotateExample extends StatelessWidget {
  const DecelerateInterpolationRotateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimationPlayer(
          builder: (context, animation) {
            const tau = math.pi * 2;
            return Transform.rotate(
              angle: decelerate(animation) * tau,
              child: const Dash(),
            );
          },
        ),
      ],
    );
  }
}
