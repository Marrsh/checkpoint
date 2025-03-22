import 'package:flutter/material.dart';
import 'package:level_up/data/models/game.dart';

class GameCard extends StatelessWidget {
  final Game game;
  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 200, maxWidth: 130),
        child: Stack(
          children: [
            // Container(
            //   color: Colors.green,
            // ),
            Image.network(
                'https://images.igdb.com/igdb/image/upload/t_cover_big/${game.imageId}.jpg'),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 60,
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
