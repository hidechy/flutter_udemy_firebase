// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_await_in_return

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_udemy_firebase/models/login_model.dart';

import 'constants/routes.dart' as routes;
import 'firebase_options.dart';

import 'models/main_model.dart';

import 'views/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainModel = ref.watch(mainProvider);

    return MaterialApp(
      home: (mainModel.currentUser == null)
          ? const LoginPage()
          : const MyHomePage(),
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
          title: const Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  loginModel
                    ..email = ''
                    ..password = ''
                    ..logout();

                  routes.toLoginPage(context: context, mainModel: mainModel);
                },
                child: const Text('logout'),
              ),
              Text((mainModel.currentUser == null) ? 'null' : 'not null'),
            ],
          ),
        ));
  }
}
