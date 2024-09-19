import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'flip.game.dart';

class FlipScreen extends StatelessWidget {
  const FlipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flip')),
      body: GameWidget(game: FlipGame()),
    );
  }
}
