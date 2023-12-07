import 'package:beauty_of_math/examples/examples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VectorsDistanceAndDirectionExampleSlide extends FlutterDeckSlideWidget {
  const VectorsDistanceAndDirectionExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/vectors-distance-and-direction-example',
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
              '5. Vectors 🧭 - Distance and direction',
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
final distanceVector = target - position;
final distance = distanceVector.length;
final direction = math.atan2(
  distanceVector.y,
  distanceVector.x,
);
''',
                  ),
                  SizedBox(width: 200),
                  Center(
                    child: VectorDistanceAndDirectionExample(),
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
