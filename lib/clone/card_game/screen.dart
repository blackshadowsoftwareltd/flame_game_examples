import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'klondike_game.dart';

class CardGameScreen extends StatelessWidget {
  const CardGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Game'),
      ),
      body: GameWidget(game: KlondikeGame()),
    );
  }
}
