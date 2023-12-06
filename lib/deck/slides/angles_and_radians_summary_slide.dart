import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnglesAndRadiansSummarySlide extends FlutterDeckSlideWidget {
  const AnglesAndRadiansSummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/angles-and-radians-summary',
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
            Center(
              child: SizedBox(
                height: 600,
                width: 800,
                child: FlutterDeckBulletList(
                  items: const [
                    'Both are used to measure angles',
                    'Degrees goes from 0 to 360',
                    'Radians goes from 0 to 2π (or tau)',
                    'Degrees tend to be more intuitive',
                    'Radians are more precise',
                    'Radians are represented by "rad", which is cooler!',
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
