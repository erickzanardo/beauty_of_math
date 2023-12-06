import 'package:beauty_of_math/examples/examples.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  'Vectors',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(height: 16),
                VectorsExampleState(),
                SizedBox(height: 32),
                Text(
                  'Radians and Pi',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(height: 16),
                PiDemonstration(),
                Text(
                  'Liner Interpolation',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(height: 16),
                LinearInterpolationExample(),
                SizedBox(height: 32),
                Text(
                  'Decelerate Interpolation',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(height: 16),
                DecelerateInterpolationExample(),
                SizedBox(height: 16),
                Text(
                  'Flutter curves',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(height: 16),
                FlutterCurvesInterpolationExample(),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
