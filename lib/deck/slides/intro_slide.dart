import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class IntroSlide extends FlutterDeckSlideWidget {
  const IntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/intro'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Who am I',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 48),
            Text(
              'Born and raised in Brazil 🇧🇷'
              '\nTech Delivery Lead @ VGV '
              '\nOSS Maintainer @ Flame Engine 🔥 (and other projects) '
              '\nIndependent Game Developer at night 🎮🌙',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
      rightBuilder: (_) {
        return Image.asset(
          'assets/erick.png',
        );
      },
    );
  }
}
