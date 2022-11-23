import 'package:flutter/material.dart';

import '../../models/main_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.mainModel});

  final MainModel mainModel;

  ///
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          mainModel.firestoreUser.userName,
          style: const TextStyle(fontSize: 50),
        ),
      ],
    );
  }
}
