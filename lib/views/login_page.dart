// ignore_for_file: unnecessary_await_in_return

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_udemy_firebase/models/main_model.dart';

import '../constants/routes.dart' as routes;
import '../models/login_model.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginModel = ref.watch(loginProvider);

    final mainModel = ref.watch(mainProvider);

    final emailEditingController =
        TextEditingController(text: loginModel.email);
    final passwordEditingController =
        TextEditingController(text: loginModel.password);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailEditingController,
            onChanged: (text) => loginModel.email = text,
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            controller: passwordEditingController,
            onChanged: (text) => loginModel.password = text,
            //
            obscureText: loginModel.isObscure,
            decoration: InputDecoration(
              suffix: InkWell(
                onTap: loginModel.toggleIsObscure,
                child: (loginModel.isObscure)
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            onPressed: () {
              emailEditingController.text = 'hide.toyoda@gmail.com';
              passwordEditingController.text = 'hidechy4819';

              loginModel
                ..email = 'hide.toyoda@gmail.com'
                ..password = 'hidechy4819';
            },
            child: const Text('dummy'),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
            onPressed: () {
              routes.toSignupPage(context: context);
            },
            child: const Text('Signup'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          emailEditingController.text = '';
          passwordEditingController.text = '';

          return await loginModel.login(
            context: context,
            mainModel: mainModel,
          );
        },
        child: const Icon(Icons.login),
      ),
    );
  }
}
