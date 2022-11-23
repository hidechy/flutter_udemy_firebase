// ignore_for_file: unnecessary_await_in_return

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_udemy_firebase/components/rounded_button.dart';
import 'package:test_udemy_firebase/components/rounded_password_field.dart';

import '../components/rounded_text_field.dart';
import '../models/signup_model.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({super.key});

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupModel = ref.watch(signupProvider);

    final emailEditingController =
        TextEditingController(text: signupModel.email);
    final passwordEditingController =
        TextEditingController(text: signupModel.password);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          RoundedTextField(
            keybordType: TextInputType.emailAddress,
            onChanged: (text) => signupModel.email = text,
            controller: emailEditingController,
            color: Colors.white,
            borderColor: Colors.black,
            hintText: 'enter email',
          ),
          const SizedBox(height: 10),
          RoundedPasswordField(
            onChanged: (text) => signupModel.password = text,
            controller: passwordEditingController,
            obscureText: signupModel.isObscure,
            toggleIsObscureText: signupModel.toggleIsObscure,
            color: Colors.white,
            borderColor: Colors.black,
            shadowColor: Colors.purpleAccent,
          ),
          const SizedBox(height: 50),
          RoundedButton(
            onPressed: () async {
              return await signupModel.createUser(context: context);
            },
            withRate: 0.5,
            color: Colors.green,
            text: '新規登録',
          ),
        ],
      ),
    );
  }
}
