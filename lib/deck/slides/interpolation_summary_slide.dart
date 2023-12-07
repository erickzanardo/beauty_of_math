import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class InterpolationSummarySlide extends FlutterDeckSlideWidget {
  const InterpolationSummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interpolation-summary',
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
                  'Is the process of determining a value based on a set of '
                  'values.\n\n'
                  'One common use in computer graphics is to determine the '
                  'value of animation components based on time of the '
                  'animation.'
                  '\n\n'
                  'For example: which position should the logo be when at half '
                  'of the animation?',
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
