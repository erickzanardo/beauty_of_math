import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnglesAndRadiansSlide extends FlutterDeckSlideWidget {
  const AnglesAndRadiansSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/angles-and-radians'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(title: '1. Degrees and Radians 📐');
  }
}
