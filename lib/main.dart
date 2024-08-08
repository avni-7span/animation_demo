import 'package:animation_demo/animated-builder-ufo/animated_builder_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedBuilderDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
