import 'dart:math' as math;

import 'package:beauty_of_math/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LinearInterpolationExample extends StatelessWidget {
  const LinearInterpolationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Translate'),
        LinearInterpolationTranslateExample(),
        SizedBox(height: 32),
        Text('Rotation'),
        LinearInterpolationRotateExample(),
      ],
    );
  }
}

class LinearInterpolationTranslateExample extends StatelessWidget {
  const LinearInterpolationTranslateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimationPlayer(
          builder: (context, animation) {
            return Transform.translate(
              offset: Offset(
                0,
                animation * -50,
              ),
              child: const Dash(),
            );
          },
        ),
      ],
    );
  }
}

class LinearInterpolationRotateExample extends StatelessWidget {
  const LinearInterpolationRotateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimationPlayer(
          builder: (context, animation) {
            const tau = math.pi * 2;
            return Transform.rotate(
              angle: animation * tau,
              child: const Dash(),
            );
          },
        ),
      ],
    );
  }
}
