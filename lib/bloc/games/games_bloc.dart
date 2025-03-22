import 'package:bloc/bloc.dart';
import 'package:level_up/bloc/loading_status.dart';
import 'package:level_up/data/models/game.dart';
import 'package:level_up/data/repositories/games_repository.dart';
import 'package:meta/meta.dart';

part 'games_event.dart';
part 'games_state.dart';

class GamesBloc extends Bloc<GamesEvent, GamesState> {
  GamesBloc() : super(GamesInitial()) {
    on<GamesEvent>((event, emit) {});

    on<GamesRequested>(
      (event, emit) async {
        emit(state.copyWith(loadingStatus: LoadingStatus.loading));

        GamesRepository gamesRepository = GamesRepository();

        List<Game> games =
            await gamesRepository.get(query: 'fields name, cover.image_id;');

        // var covers = await gamesRepository.getCovers(
        //     query: 'fields game; wherelimit 10;');

        emit(state.copyWith(loadingStatus: LoadingStatus.loaded, games: games));
      },
    );
  }
}
