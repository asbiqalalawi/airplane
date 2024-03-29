// ignore_for_file: use_rethrow_when_possible

import 'package:airplane/model/user_model.dart';
import 'package:airplane/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        hobby: hobby,
        balance: 280000000,
      );

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> signIn({required String email, required String password}) async {
    try {
      UserCredential cred = await auth.signInWithEmailAndPassword(email: email, password: password);
      UserModel user = await UserService().getCurrentUser(cred.user!.uid);
      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
