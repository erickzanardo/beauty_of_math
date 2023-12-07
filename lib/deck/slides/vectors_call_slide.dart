import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VectorsCallSlide extends FlutterDeckSlideWidget {
  const VectorsCallSlide()
      : super(
          configuration:
              const FlutterDeckSlideConfiguration(route: '/vectors-call'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(title: '5. Vectors 🧭');
  }
}
