import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LinearInterpolationSummarySlide extends FlutterDeckSlideWidget {
  const LinearInterpolationSummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/linear-interpolation-summary',
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
              '2. Interpolation ⛙',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 100),
            Center(
              child: SizedBox(
                height: 600,
                width: 800,
                child: Text(
                  'Linear interpolations have a consistent and easy to predict '
                  'pace.\n\n'
                  'e.g. If the animation is 2 seconds long, the animation '
                  'will be at half of the animation at 1 second.\n\n '
                  'It is also known as lerp and is the simplest form of '
                  'interpolation.\n\n'
                  'It is also the most boring one!.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
