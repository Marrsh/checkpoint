part of 'games_bloc.dart';

@immutable
final class GamesState {
  final LoadingStatus loadingStatus;
  final List<Game>? games;

  const GamesState({
    this.loadingStatus = LoadingStatus.initial,
    this.games = const [],
  });

  // @override
  // List<Object> get props => [
  // loadingStatus
  // ]; // not sure what this does but it's all over the flutter docs

  GamesState copyWith({LoadingStatus? loadingStatus, List<Game>? games}) {
    return GamesState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      games: games ?? this.games,
    );
  }
}

final class GamesInitial extends GamesState {}
