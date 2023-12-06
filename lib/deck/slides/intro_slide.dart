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
            const Text('Born and raised in Brazil 🇧🇷'),
            const Text('Tech Delivery Lead @ VGV'),
            const Text('OSS Maintainer @ Flame Engine 🔥 (and other projects)'),
            const Text('Independent Game Developer at night 🎮🌙'),
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
