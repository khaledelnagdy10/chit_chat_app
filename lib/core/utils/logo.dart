import 'package:flutter/material.dart';

import 'assest.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.2 / 1, child: Image.asset(Assest.chatAppLogo));
  }
}
