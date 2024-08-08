import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
