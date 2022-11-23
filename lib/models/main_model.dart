// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/routes.dart' as routes;

final mainProvider = ChangeNotifierProvider((ref) => MainModel());

class MainModel extends ChangeNotifier {
  MainModel() {
    init();
  }

  ///

  bool isLoading = false;

  late DocumentSnapshot<Map<String, dynamic>> currentUserDoc;

  Future<void> init() async {
    startLoading();

    currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      currentUserDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser?.uid)
          .get();
    }

    endLoading();
  }

  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  void endLoading() {
    isLoading = false;
    notifyListeners();
  }

  ///
  User? currentUser;

  ///
  void setCurrentUser() {
    currentUser = FirebaseAuth.instance.currentUser;

    notifyListeners();
  }

  ///
  Future<void> logout({required BuildContext context}) async {
    await FirebaseAuth.instance.signOut();
    setCurrentUser();
    routes.toLoginPage(context: context);
  }
}
