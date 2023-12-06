import 'package:flutter/material.dart';

class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: 50,
        height: 50,
        child: Image.asset(
          'assets/dash_still.png',
          fit: BoxFit.contain,
          filterQuality: FilterQuality.none,
        ),
      ),
    );
  }
}
