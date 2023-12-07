import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class VectorsExplanationSlide extends FlutterDeckSlideWidget {
  const VectorsExplanationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/vectors-explanation',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '5. Vectors 🧭 - But how?',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 100),
            Center(
              child: SizedBox(
                height: 600,
                width: 800,
                child: Column(
                  children: [
                    Text(
                      'It is simple trigonometry!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 48),
                    Expanded(
                      child: ColoredBox(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/Sinus_und_Kosinus_am_Einheitskreis_1.svg.png',
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Image.asset(
                                'assets/Atan2definition.svg.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
