import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void login(String email, String password) {
    emit(AuthLoading());
    // Simulate API call
    Future.delayed(Duration(seconds: 2), () {
      if (email == "user@example.com" && password == "password123") {
        emit(AuthSuccess());
      } else {
        emit(AuthFailure("Invalid email or password"));
      }
    });
  }
}
