import 'package:airplane/model/user_model.dart';
import 'package:airplane/services/auth_service.dart';
import 'package:airplane/services/user_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      emit(
        AuthLoading(),
      );

      UserModel user = await AuthService().signUp(
        email: email,
        password: password,
        name: name,
        hobby: hobby,
      );

      emit(
        AuthSuccess(
          user: user,
        ),
      );
    } catch (e) {
      emit(
        AuthFailed(
          error: e.toString(),
        ),
      );
    }
  }

  void signIn({required String email, required String password}) async {
    try {
      emit(AuthLoading());
      UserModel user = await AuthService().signIn(email: email, password: password);
      emit(AuthSuccess(user: user));
    } catch (e) {
      emit(AuthFailed(error: e.toString()));
    }
  }

  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthService().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed(error: e.toString()));
    }
  }

  void getCurrentUser(String id) async {
    try {
      UserModel user = await UserService().getCurrentUser(id);
      emit(AuthSuccess(user: user));
    } catch (e) {
      emit(AuthFailed(error: e.toString()));
    }
  }
}
