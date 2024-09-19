import 'package:flutter/material.dart';

class FlipScreen extends StatelessWidget {
  const FlipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flip')),
      body: const Center(
        child: Text('Flip'),
      ),
    );
  }
}
