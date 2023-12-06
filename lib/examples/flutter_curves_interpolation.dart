import 'dart:math' as math;

import 'package:beauty_of_math/widgets/widgets.dart';
import 'package:flutter/material.dart';

final _allCurves = [
  ('Linear', Curves.linear),
  ('Decelerate', Curves.decelerate),
  ('Ease', Curves.ease),
  ('Ease In', Curves.easeIn),
  ('Ease In To Linear', Curves.easeInToLinear),
  ('Ease In Sine', Curves.easeInSine),
  ('Ease In Quad', Curves.easeInQuad),
  ('Ease In Cubic', Curves.easeInCubic),
  ('Ease In Quart', Curves.easeInQuart),
  ('Ease In Quint', Curves.easeInQuint),
  ('Ease In Expo', Curves.easeInExpo),
  ('Ease In Circ', Curves.easeInCirc),
  ('Ease In Back', Curves.easeInBack),
  ('Ease Out', Curves.easeOut),
  ('Ease Out Sine', Curves.easeOutSine),
  ('Ease Out Quad', Curves.easeOutQuad),
  ('Ease Out Cubic', Curves.easeOutCubic),
  ('Ease Out Quart', Curves.easeOutQuart),
  ('Ease Out Quint', Curves.easeOutQuint),
  ('Ease Out Expo', Curves.easeOutExpo),
  ('Ease Out Circ', Curves.easeOutCirc),
  ('Ease Out Back', Curves.easeOutBack),
  ('Ease In Out', Curves.easeInOut),
  ('Ease In Out Sine', Curves.easeInOutSine),
  ('Ease In Out Quad', Curves.easeInOutQuad),
  ('Ease In Out Cubic', Curves.easeInOutCubic),
  ('Ease In Out Quart', Curves.easeInOutQuart),
  ('Ease In Out Quint', Curves.easeInOutQuint),
  ('Ease In Out Expo', Curves.easeInOutExpo),
  ('Ease In Out Circ', Curves.easeInOutCirc),
  ('Ease In Out Back', Curves.easeInOutBack),
  ('Fast Out Slow In', Curves.fastOutSlowIn),
  ('Fast Linear To Slow Ease In', Curves.fastLinearToSlowEaseIn),
  ('Slow Middle', Curves.slowMiddle),
  ('Bounce In', Curves.bounceIn),
  ('Bounce Out', Curves.bounceOut),
  ('Bounce In Out', Curves.bounceInOut),
  ('Elastic In', Curves.elasticIn),
  ('Elastic Out', Curves.elasticOut),
  ('Elastic In Out', Curves.elasticInOut),
];

class FlutterCurvesInterpolationExample extends StatelessWidget {
  const FlutterCurvesInterpolationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Translate'),
        FlutterCurvesInterpolationTranslateExample(),
        SizedBox(height: 32),
        Text('Rotation'),
        FlutterCurvesInterpolationRotateExample(),
      ],
    );
  }
}

class FlutterCurvesInterpolationTranslateExample extends StatefulWidget {
  const FlutterCurvesInterpolationTranslateExample({super.key});

  @override
  State<FlutterCurvesInterpolationTranslateExample> createState() =>
      _FlutterCurvesInterpolationTranslateExampleState();
}

class _FlutterCurvesInterpolationTranslateExampleState
    extends State<FlutterCurvesInterpolationTranslateExample> {
  Curve curve = Curves.bounceIn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimationPlayer(
          builder: (context, animation) {
            return Transform.translate(
              offset: Offset(
                0,
                curve.transform(animation) * -50,
              ),
              child: const Dash(),
            );
          },
        ),
        const SizedBox(height: 8),
        DropdownButton<Curve>(
          value: curve,
          onChanged: (value) {
            setState(() {
              curve = value!;
            });
          },
          items: [
            for (final curve in _allCurves)
              DropdownMenuItem(
                value: curve.$2,
                child: Text(curve.$1),
              ),
          ],
        ),
      ],
    );
  }
}

class FlutterCurvesInterpolationRotateExample extends StatefulWidget {
  const FlutterCurvesInterpolationRotateExample({super.key});

  @override
  State<FlutterCurvesInterpolationRotateExample> createState() =>
      _FlutterCurvesInterpolationRotateExampleState();
}

class _FlutterCurvesInterpolationRotateExampleState
    extends State<FlutterCurvesInterpolationRotateExample> {
  Curve curve = Curves.bounceIn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimationPlayer(
          builder: (context, animation) {
            const tau = math.pi * 2;
            return Transform.rotate(
              angle: curve.transform(animation) * tau,
              child: const Dash(),
            );
          },
        ),
        const SizedBox(height: 8),
        DropdownButton<Curve>(
          value: curve,
          onChanged: (value) {
            setState(() {
              curve = value!;
            });
          },
          items: [
            for (final curve in _allCurves)
              DropdownMenuItem(
                value: curve.$2,
                child: Text(curve.$1),
              ),
          ],
        ),
      ],
    );
  }
}
