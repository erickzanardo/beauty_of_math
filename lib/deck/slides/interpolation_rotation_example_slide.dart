import 'package:beauty_of_math/examples/examples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class InterpolationRotationExampleSlide extends FlutterDeckSlideWidget {
  const InterpolationRotationExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interpolation-rotation-example',
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
              '2. Interpolation ⛙ - Rotation',
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
AnimationPlayer(
  builder: (context, animation) {
    const tau = math.pi * 2;
    return Transform.rotate(
      angle: animation * tau,
      child: const Dash(),
    );
  },
),
''',
                  ),
                  SizedBox(width: 200),
                  Center(
                    child: LinearInterpolationRotateExample(),
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
