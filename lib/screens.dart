import 'package:flame_example/clone/shooter/screen.dart';
import 'package:flame_example/practices/flip/screen.dart';
import 'package:flame_example/practices/moves/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clone/card_game/screen.dart';

class Screens extends StatelessWidget {
  const Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Game'),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _Button(screen: FlipScreen(), title: 'Flip'),
            _Button(screen: MovesScreen(), title: 'Moves'),
            _Button(screen: CardGameScreen(), title: 'Card Game'),
            _Button(screen: ShooterGameScreen(), title: 'Shooter Game'),
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({required this.screen, required this.title});
  final Widget screen;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
          onPressed: () async => await Navigator.push(context, CupertinoPageRoute(builder: (context) => screen)),
          child: Text(title)),
    );
  }
}
