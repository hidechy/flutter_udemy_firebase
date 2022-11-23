// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainProvider = ChangeNotifierProvider((ref) => MainModel());

class MainModel extends ChangeNotifier {
  User? currentUser;

  void setCurrentUser() {
    currentUser = FirebaseAuth.instance.currentUser;

    notifyListeners();
  }
}
