import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/rounded_button.dart';
import '../../constants/routes.dart' as routes;
import '../../constants/strings.dart';
import '../../models/login_model.dart';
import '../../models/main_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainModel = ref.watch(mainProvider);
    final loginModel = ref.watch(loginProvider);

    return Column(
      children: [
        const Text(bottomNavText1),
        Text(mainModel.currentUserDoc['userName'].toString()),
        const SizedBox(height: 100),
        RoundedButton(
          onPressed: () {
            loginModel
              ..email = ''
              ..password = '';

            mainModel.logout(context: context);

            routes.toLoginPage(context: context);
          },
          withRate: 0.8,
          color: Colors.orangeAccent,
          text: logoutText,
        ),
      ],
    );
  }
}
