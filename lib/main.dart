import 'package:animation_demo/lottie-animation/lottie_animation_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LottieAnimationDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
