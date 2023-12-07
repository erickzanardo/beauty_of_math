import 'package:beauty_of_math/examples/examples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VectorsDistanceExampleSlide extends FlutterDeckSlideWidget {
  const VectorsDistanceExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/vectors-distance-example',
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
              '5. Vectors 🧭 - Distance',
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
''',
                  ),
                  SizedBox(width: 200),
                  Center(
                    child: VectorDistanceExample(),
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
