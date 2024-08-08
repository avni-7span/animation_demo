import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: const Center(
        child: Text(
          'Favourite Screen',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
