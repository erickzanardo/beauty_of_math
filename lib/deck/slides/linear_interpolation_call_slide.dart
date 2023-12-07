import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LinearInterpolationCallSlide extends FlutterDeckSlideWidget {
  const LinearInterpolationCallSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/linear-interpolation-call'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(title: 'You just saw linear interpolations!');
  }
}
