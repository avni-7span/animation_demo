import 'package:flutter/material.dart';

class AnimatedBuilderDemo extends StatefulWidget {
  const AnimatedBuilderDemo({super.key});

  @override
  State<AnimatedBuilderDemo> createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with SingleTickerProviderStateMixin {
  /// By default, an AnimationController linearly produces values that range
  /// from 0.0 to 1.0, during a given duration.(60 values per second)

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this)
          ..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(
              'assets/galaxxy.jpg',
              fit: BoxFit.cover,
            ),
          ),
          AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext context, Widget? child) {
              return ClipPath(
                clipper: BeamClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                        radius: 1.5,
                        colors: const [Colors.yellow, Colors.transparent],
                        stops: [0, _animationController.value]),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/ufo-removebg-preview.png',
            ),
          ),
        ],
      ),
    );
  }
}

class BeamClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(size.width / 2, size.height / 2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height / 2)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class BeamTransition extends StatelessWidget {
  const BeamTransition({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
