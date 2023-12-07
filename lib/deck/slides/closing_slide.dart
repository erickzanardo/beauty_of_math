import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ClosingSlide extends FlutterDeckSlideWidget {
  const ClosingSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/closing',
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
              'Thanks!!!!',
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
                      'Math can be scary, but when you understand it, piece by '
                      'piece, it all start to make sense and will empower you '
                      'to create amazing things.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 48),
                    Expanded(
                      child: Image.asset(
                        'assets/math_meme.png',
                      ),
                    ),
                    const SizedBox(height: 48),
                    Text(
                      'Happy to answer any questions (if I know the answer '
                      '😅)!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
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
