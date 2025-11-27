part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthEventLogin extends AuthEvent {
  final String username;
  final String password;
  AuthEventLogin({required this.username, required this.password});
}
