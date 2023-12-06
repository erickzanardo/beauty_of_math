import 'package:beauty_of_math/deck/deck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

void main() {
  runApp(const Deck());
}

class Deck extends StatelessWidget {
  const Deck({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      slides: const [
        OpenSlide(),
        IntroSlide(),
        GoalSlide(),
        LetsGetStartedSlide(),
        AnglesAndRadiansSlide(),
        AnglesAndRadiansSummarySlide(),
        AnglesAndRadiansExampleSlide(),
      ],
    );
  }
}
