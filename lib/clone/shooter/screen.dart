import 'package:flutter/material.dart';

class ShooterGameScreen extends StatelessWidget {
  const ShooterGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shooter Game')),
      body: const Center(
        child: Text('Shooter Game'),
      ),
    );
  }
}
