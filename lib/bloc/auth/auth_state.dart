part of 'auth_bloc.dart';

@immutable
final class AuthState {
  final LoadingStatus loadingStatus;
  final String igdbToken;
  const AuthState(
      {this.loadingStatus = LoadingStatus.initial, this.igdbToken = ''});

//  @override
  // List<Object> get props => [loadingStatus ]; // not sure what this does but it's all over the flutter docs

  AuthState copyWith({LoadingStatus? loadingStatus, String? igdbToken}) {
    return AuthState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      igdbToken: igdbToken ?? this.igdbToken,
    );
  }
}

final class AuthInitial extends AuthState {}
