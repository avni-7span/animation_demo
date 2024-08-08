import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.pink;

  // double _radius = 8;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  final random = Random();

  void generateRandomNumber() {
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
            gradient: LinearGradient(
              colors: [_color, Colors.transparent],
            ),
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.linearToEaseOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: generateRandomNumber,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

class SineCurve extends Curve {
  const SineCurve({this.count = 1});

  final double count;

  @override
  double transformInternal(double t) {
    return sin(count * 2 * pi * t) * 0.5 + 0.5;
  }
}
