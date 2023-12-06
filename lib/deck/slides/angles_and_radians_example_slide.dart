import 'package:beauty_of_math/examples/examples.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnglesAndRadiansExampleSlide extends FlutterDeckSlideWidget {
  const AnglesAndRadiansExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/angles-and-radians-example',
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
              '1. Degrees and Radians 📐',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 100),
            const Center(
              child: SizedBox(
                height: 600,
                width: 800,
                child: Center(
                  child: PiDemonstration(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
