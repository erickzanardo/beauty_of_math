import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LetsGetStartedSlide extends FlutterDeckSlideWidget {
  const LetsGetStartedSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/lets-get-started'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(title: 'Lets get started! 🚀');
  }
}
