part of 'games_bloc.dart';

@immutable
sealed class GamesEvent {}

class GamesRequested extends GamesEvent {}
