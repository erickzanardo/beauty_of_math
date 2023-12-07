import 'package:beauty_of_math/examples/examples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CurvesTranslateExampleSlide extends FlutterDeckSlideWidget {
  const CurvesTranslateExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/curves-translate-example',
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
              '4. Even cooler interpolation, Curves ৶ - Translate',
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
final curve = Curves.bounceIn;
AnimationPlayer(
  builder: (context, animation) {
    return Transform.translate(
      offset: Offset(
        0,
        curve.transform(animation) * -50,
      ),
      child: const Dash(),
    );
  },
),
''',
                  ),
                  SizedBox(width: 200),
                  Center(
                    child: FlutterCurvesInterpolationTranslateExample(),
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
