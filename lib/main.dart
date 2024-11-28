import 'package:chit_chat/features/auth/presentation/sign_up/view/sign_up_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ChitChat());
}

class ChitChat extends StatelessWidget {
  const ChitChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SignUpView());
  }
}
