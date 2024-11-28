import 'package:chit_chat/core/utils/logo.dart';
import 'package:chit_chat/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
      ],
    );
  }
}
