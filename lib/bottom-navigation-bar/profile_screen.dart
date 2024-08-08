import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: const Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
