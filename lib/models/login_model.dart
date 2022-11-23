import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/routes.dart' as routes;

import 'main_model.dart';

final loginProvider = ChangeNotifierProvider((ref) => LoginModel());

class LoginModel extends ChangeNotifier {
  ///
  String email = '';
  String password = '';

  Future<void> login(
      {required BuildContext context, required MainModel mainModel}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      mainModel.setCurrentUser();

      routes.toMyApp(context: context);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
    }
  }

  ///

  bool isObscure = true;

  void toggleIsObscure() {
    isObscure = !isObscure;
    notifyListeners();
  }

  ///
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();

    notifyListeners();
  }
}
