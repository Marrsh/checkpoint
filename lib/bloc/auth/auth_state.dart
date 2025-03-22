part of 'auth_bloc.dart';

enum LoadingStatus { loading, loaded, failed, initial }

@immutable
final class AuthState {
  final LoadingStatus loadingStatus;
  final String igdbToken;
  const AuthState(
      {this.loadingStatus = LoadingStatus.initial, this.igdbToken = ''});

//  @override
  // List<Object> get props => [loadingStatus ];

  AuthState copyWith({LoadingStatus? loadingStatus, String? igdbToken}) {
    return AuthState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      igdbToken: igdbToken ?? this.igdbToken,
    );
  }
}

final class AuthInitial extends AuthState {}
