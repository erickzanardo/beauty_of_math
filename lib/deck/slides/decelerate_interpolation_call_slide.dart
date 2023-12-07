import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DecelerateInterpolationCallSlide extends FlutterDeckSlideWidget {
  const DecelerateInterpolationCallSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/decelerate-interpolation-call',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: '3. A cooler interpolation, Decelerate 🐢',
    );
  }
}
