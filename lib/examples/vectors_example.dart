import 'dart:math' as math;
import 'package:beauty_of_math/widgets/widgets.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';

class VectorsExampleState extends StatelessWidget {
  const VectorsExampleState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Distance'),
        VectorDistanceExample(),
        SizedBox(height: 32),
        Text('Distance And Direction'),
        VectorDistanceAndDirectionExample(),
        SizedBox(height: 32),
      ],
    );
  }
}

class VectorDistanceExample extends StatefulWidget {
  const VectorDistanceExample({super.key});

  @override
  State<VectorDistanceExample> createState() => _VectorDistanceExampleState();
}

class _VectorDistanceExampleState extends State<VectorDistanceExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  Vector2? _target;
  var _position = Vector2.all(100);
  Vector2? _distance;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..addListener(() {
        final distance = _distance;

        if (distance != null) {
          final newPosition = _position + distance * _controller.value;

          setState(() {
            _distance = _target! - newPosition;
            _position = newPosition;
          });
        }
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _controller.reset();
          });
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) {
        if (_controller.isAnimating) {
          return;
        }
        final position = details.localPosition.toVector2() - Vector2.all(5);
        setState(() {
          _target = position;
          _distance = _target! - _position;
          _controller.forward();
        });
      },
      child: SizedBox(
        width: 200,
        height: 200,
        child: ColoredBox(
          color: Colors.black,
          child: Stack(
            children: [
              if (_target != null)
                Positioned(
                  left: _target!.x,
                  top: _target!.y,
                  child: const ColoredBox(
                    color: Colors.blue,
                    child: SizedBox.square(dimension: 10),
                  ),
                ),
              Positioned(
                left: _position.x,
                top: _position.y,
                child: Transform.translate(
                  offset: const Offset(-25, -25),
                  child: const Dash(),
                ),
              ),
              if (_distance != null)
                Text(
                  'Distance: ${_distance!.length.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.white),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class VectorDistanceAndDirectionExample extends StatefulWidget {
  const VectorDistanceAndDirectionExample({super.key});

  @override
  State<VectorDistanceAndDirectionExample> createState() =>
      _VectorDistanceAndDirectionExampleState();
}

class _VectorDistanceAndDirectionExampleState
    extends State<VectorDistanceAndDirectionExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  Vector2? _target;
  var _position = Vector2.all(100);
  Vector2? _distance;
  double _direction = math.pi * 2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..addListener(() {
        final distance = _distance;

        if (distance != null) {
          final newPosition = _position + distance * _controller.value;

          setState(() {
            _distance = _target! - newPosition;
            _position = newPosition;
          });
        }
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _controller.reset();
          });
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) {
        if (_controller.isAnimating) {
          return;
        }
        final position = details.localPosition.toVector2() - Vector2.all(5);
        setState(() {
          _target = position;
          _distance = _target! - _position;
          _direction = math.atan2(_distance!.y, _distance!.x);
          _controller.forward();
        });
      },
      child: SizedBox(
        width: 200,
        height: 200,
        child: ColoredBox(
          color: Colors.black,
          child: Stack(
            children: [
              if (_target != null)
                Positioned(
                  left: _target!.x,
                  top: _target!.y,
                  child: const ColoredBox(
                    color: Colors.blue,
                    child: SizedBox.square(dimension: 10),
                  ),
                ),
              Positioned(
                left: _position.x,
                top: _position.y,
                child: Transform.translate(
                  offset: const Offset(-25, -25),
                  child: Transform.rotate(
                    angle: _direction,
                    child: const Dash(),
                  ),
                ),
              ),
              if (_distance != null)
                Text(
                  'Distance: ${_distance!.length.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.white),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
