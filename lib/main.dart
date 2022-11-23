// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_await_in_return

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/rounded_button.dart';
import 'constants/routes.dart' as routes;
import 'constants/strings.dart';
import 'firebase_options.dart';
import 'models/login_model.dart';
import 'models/main_model.dart';
import 'views/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final onceUser = FirebaseAuth.instance.currentUser;

    return MaterialApp(
      home: (onceUser == null) ? const LoginPage() : const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainModel = ref.watch(mainProvider);

    final loginModel = ref.watch(loginProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(homeTitle),
      ),
      body: (mainModel.isLoading == true)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
            ),
    );
  }
}
