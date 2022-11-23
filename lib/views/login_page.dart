// ignore_for_file: unnecessary_await_in_return

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_udemy_firebase/components/rounded_button.dart';
import 'package:test_udemy_firebase/components/rounded_password_field.dart';
import 'package:test_udemy_firebase/components/rounded_text_field.dart';
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
          RoundedTextField(
            keybordType: TextInputType.emailAddress,
            onChanged: (text) => loginModel.email = text,
            controller: emailEditingController,
            color: Colors.white,
            borderColor: Colors.black,
            hintText: 'enter email',
          ),
          const SizedBox(height: 10),
          RoundedPasswordField(
            onChanged: (text) => loginModel.password = text,
            controller: passwordEditingController,
            obscureText: loginModel.isObscure,
            toggleIsObscureText: loginModel.toggleIsObscure,
            color: Colors.white,
            borderColor: Colors.black,
            shadowColor: Colors.purpleAccent,
          ),
          const SizedBox(height: 50),
          RoundedButton(
            onPressed: () async {
              emailEditingController.text = '';
              passwordEditingController.text = '';

              return await loginModel.login(
                context: context,
                mainModel: mainModel,
              );
            },
            withRate: 0.5,
            color: Colors.green,
            text: 'ログイン',
          ),
          const SizedBox(height: 100),
          const Divider(color: Colors.black, thickness: 3),
          const SizedBox(height: 20),
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
          const SizedBox(height: 20),
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
    );
  }
}
