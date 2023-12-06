import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OpenSlide extends FlutterDeckSlideWidget {
  const OpenSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/open'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (_) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Math is beautiful 🧮💙',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 16),
              Text(
                'Erick Zanardo',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        );
      },
    );
  }
}
