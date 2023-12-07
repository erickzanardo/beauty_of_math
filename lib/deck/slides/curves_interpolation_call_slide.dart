import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CurvesInterpolationCallSlide extends FlutterDeckSlideWidget {
  const CurvesInterpolationCallSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/curves-interpolation-call',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: '4. Even cooler interpolation, Curves ৶',
    );
  }
}
