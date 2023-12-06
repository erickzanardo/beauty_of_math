import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class GoalSlide extends FlutterDeckSlideWidget {
  const GoalSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/goal'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Goal',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Math is something that can scare developers sometimes. '
                '\nThat was (and still is) the case for me. In this '
                'presentation I hope to use my learning experience in the '
                'hope to show that it '
                "isn't that complicated and that it can be beautiful!",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        );
      },
      rightBuilder: (_) {
        return Image.asset(
          'assets/goal.jpeg',
        );
      },
    );
  }
}
