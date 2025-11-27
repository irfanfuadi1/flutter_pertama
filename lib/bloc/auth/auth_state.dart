part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class AuthStateLoading extends AuthState {}

class AuthStateLoaded extends AuthState {}

class AuthStateError extends AuthState {
  final String message;
  AuthStateError({required this.message});
}
