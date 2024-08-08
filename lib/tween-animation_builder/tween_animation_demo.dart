import 'package:flutter/material.dart';
import 'dart:math' as math;

class TweenAnimationDemo extends StatelessWidget {
  const TweenAnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: TweenAnimationBuilder(
          tween: ColorTween(begin: Colors.white, end: Colors.red),
          duration: const Duration(seconds: 2),
          builder: (context, value, child) {
            return ColorFiltered(
              colorFilter:
                  ColorFilter.mode(value ?? Colors.white, BlendMode.modulate),
              child: Image.asset('assets/sun_image.jpeg'),
            );
          },
        ),
      ),
    );
  }
}
