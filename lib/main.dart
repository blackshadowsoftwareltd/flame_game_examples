import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'klondike_game.dart';

void main() {
  final game = KlondikeGame();
  runApp(MaterialApp(
    // showPerformanceOverlay: true,
    home: GameWidget(game: game),
  ));
}
