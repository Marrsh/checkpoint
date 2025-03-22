import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:level_up/bloc/games/games_bloc.dart';
import 'package:level_up/bloc/loading_status.dart';
import 'package:level_up/features/home/widgets/game_card.dart';

class CarouselPreview extends StatefulWidget {
  final double? cardSpacing;
  const CarouselPreview({super.key, this.cardSpacing = 10});

  @override
  State<CarouselPreview> createState() => _CarouselPreviewState();
}

class _CarouselPreviewState extends State<CarouselPreview> {
  @override
  void initState() {
    super.initState();

    context.read<GamesBloc>().add(GamesRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesBloc, GamesState>(
      builder: (context, state) {
        if (state.loadingStatus == LoadingStatus.loaded) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: UnconstrainedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(state.games!.length, (index) {
                    return Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: GameCard(
                          game: state.games![index],
                        ));
                  }).toList()),
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
