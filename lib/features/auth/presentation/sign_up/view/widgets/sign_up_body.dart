import 'dart:developer';

import 'package:chit_chat/constans.dart';
import 'package:chit_chat/core/utils/logo.dart';
import 'package:chit_chat/core/utils/text_styles.dart';
import 'package:chit_chat/core/utils/widgets/custom_button.dart';
import 'package:chit_chat/core/utils/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  String emailAddress = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Groupie',
              style: Style.textStyleBold35,
            ),
          ],
        ),
        Text(
          'Login now to see what they are talking!',
          style: Style.textStyle18.copyWith(color: Colors.grey[700]),
        ),
        const Logo(),
        CustomTextFormField(
          lableText: 'Email',
          prefixIcon: const Icon(Icons.email),
          onChanged: (String value) {
            setState(() {
              emailAddress = value;
              log(emailAddress);
            });
          },
        ),
        CustomTextFormField(
          lableText: 'Password',
          prefixIcon: const Icon(Icons.lock),
          onChanged: (String value) {
            setState(() {
              password = value;
              log(password);
            });
          },
        ),
        SizedBox(
          width: 370,
          child: CustomButton(
            text: 'Sign up',
            onPressed: () async {
              try {
                final credential =
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailAddress,
                  password: password,
                );
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  print('The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
                  print('The account already exists for that email.');
                }
              } catch (e) {
                print(e);
              }
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('I already have an account \t'),
            GestureDetector(
                child: Text(
              'Log In',
              style: Style.textStyle18.copyWith(color: Colors.amber[800]),
            )),
          ],
        ),
      ],
    );
  }
}
