import 'package:flutter/material.dart';

void main() {
  runApp(const ChitChat());
}

class ChitChat extends StatelessWidget {
  const ChitChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
