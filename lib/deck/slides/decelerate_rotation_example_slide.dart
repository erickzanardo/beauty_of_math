import 'package:beauty_of_math/examples/examples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DecelerateRotationExampleSlide extends FlutterDeckSlideWidget {
  const DecelerateRotationExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/decelerate-rotation-example',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '3. A cooler interpolation, Decelerate 🐢 - Rotation',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 100),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 48),
                  FlutterDeckCodeHighlight(
                    code: '''
double decelerate(double t) {
  final v = 1.0 - t;
  return 1.0 - v * v;
}

AnimationPlayer(
  builder: (context, animation) {
    const tau = math.pi * 2;
    return Transform.rotate(
      angle: decelerate(animation) * tau,
      child: const Dash(),
    );
  },
),
''',
                  ),
                  SizedBox(width: 200),
                  Center(
                    child: DecelerateInterpolationRotateExample(),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
