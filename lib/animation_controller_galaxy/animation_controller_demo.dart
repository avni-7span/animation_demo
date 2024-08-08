import 'package:flutter/material.dart';

class AnimationControllerDemo extends StatefulWidget {
  const AnimationControllerDemo({super.key});

  @override
  State<AnimationControllerDemo> createState() =>
      _AnimationControllerDemoState();
}

class _AnimationControllerDemoState extends State<AnimationControllerDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this)
          ..repeat();
  }

  ///vertical synchronization

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              if (_animationController.isAnimating) {
                _animationController.stop();
              } else {
                _animationController.repeat();
              }
            },
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: RotationTransition(
            turns: _animationController,
            alignment: Alignment.center,
            child: const Center(
              child: SizedBox(height: 50, width: 50, child: FlutterLogo()),
            ),
          ),
        ),
      ]),
    );
  }
}
