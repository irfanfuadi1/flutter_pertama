import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEventLogin>((event, emit) async {
      emit(AuthStateLoading());

      await Future.delayed(const Duration(seconds: 3));

      // simulasi login
      if (event.username == "admin" && event.password == "123") {
        emit(AuthStateLoaded());
      } else {
        emit(AuthStateError(message: "Username atau Password salah"));
      }
    });
  }
}
