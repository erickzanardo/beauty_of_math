import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VectorsSummarySlide extends FlutterDeckSlideWidget {
  const VectorsSummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/vectors-summary',
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
              '5. Vectors 🧭',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 100),
            Center(
              child: SizedBox(
                height: 600,
                width: 800,
                child: Column(
                  children: [
                    Text(
                      'Mathematical construct that has both a magnitude and a '
                      'direction.\n\n'
                      'They are composed by two values (a, b) or (x, y) '
                      'representing the magnitude in each axis.\n\n',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 48),
                    Expanded(
                      child: ColoredBox(
                        color: Colors.white,
                        child: Image.asset(
                          'assets/VectorAB.svg.png',
                        ),
                      ),
                    ),
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
