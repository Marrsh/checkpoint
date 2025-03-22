import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String title;
  const GameCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 200, maxWidth: 130),
        child: Stack(
          children: [
            Container(
              color: Colors.green,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 40,
                padding: const EdgeInsets.all(5),
                width: const BoxConstraints().maxWidth,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Colors.grey.withAlpha(200),
                      Colors.grey.withAlpha(50)
                    ])),
                child:
                    Align(alignment: Alignment.bottomLeft, child: Text(title)),
              ),
            ),
          ],
        ));
  }
}
