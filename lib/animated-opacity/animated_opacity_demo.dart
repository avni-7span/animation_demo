import 'package:flutter/material.dart';

class AnimatedOpacityDemo extends StatefulWidget {
  const AnimatedOpacityDemo({super.key});

  @override
  State<AnimatedOpacityDemo> createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: isVisible ? 1 : 0,
        duration: Duration(seconds: 3),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.indigo,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          isVisible = !isVisible;
        });
      }),
    );
  }
}
