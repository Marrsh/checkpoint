part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

sealed class RequestIDGBAuth extends AuthEvent {}
