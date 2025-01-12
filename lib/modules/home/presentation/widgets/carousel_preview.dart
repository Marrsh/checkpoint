import 'package:flutter/material.dart';
import 'package:level_up/modules/home/presentation/widgets/game_card.dart';

class CarouselPreview extends StatelessWidget {
  final double? cardSpacing;
  const CarouselPreview({super.key, this.cardSpacing = 10});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: UnconstrainedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const GameCard(),
            SizedBox(
              width: cardSpacing,
            ),
            const GameCard(),
            SizedBox(
              width: cardSpacing,
            ),
            const GameCard(),
            SizedBox(
              width: cardSpacing,
            ),
          ],
        ),
      ),
    );
  }
}
