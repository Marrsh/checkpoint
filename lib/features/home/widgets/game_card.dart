import 'package:flutter/material.dart';
import 'package:checkpoint/data/models/game.dart';

class GameCard extends StatelessWidget {
  final Game game;
  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 180, maxWidth: 120),
        child: Stack(
          children: [
            Image.network(
                'https://images.igdb.com/igdb/image/upload/t_cover_big/${game.imageId}.jpg'),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                // display on tap?
                height: 70,
                padding: const EdgeInsets.all(5),
                width: const BoxConstraints().maxWidth,
                color: Colors.amber,
                // decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //         begin: Alignment.bottomCenter,
                //         end: Alignment.topCenter,
                //         colors: [
                //       Colors.grey.withAlpha(200),
                //       Colors.grey.withAlpha(50)
                //     ])),
                child: Align(
                    alignment: Alignment.bottomLeft, child: Text(game.name)),
              ),
            ),
          ],
        ));
  }
}
