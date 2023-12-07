import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class InterpolationCallSlide extends FlutterDeckSlideWidget {
  const InterpolationCallSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/interpolation-call'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(title: '2. Interpolation ⛙');
  }
}
