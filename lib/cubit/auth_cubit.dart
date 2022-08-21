import 'package:airplane/model/user_model.dart';
import 'package:airplane/services/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

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
}
