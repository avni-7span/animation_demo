import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: const Center(
        child: Text(
          'Setting Screen',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
