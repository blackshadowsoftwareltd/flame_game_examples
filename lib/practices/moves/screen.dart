import 'package:flutter/material.dart';

class MovesScreen extends StatelessWidget {
  const MovesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Moves')),
      body: const Center(
        child: Text('Moves'),
      ),
    );
  }
}
