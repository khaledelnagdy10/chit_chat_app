import 'package:flutter/material.dart';

void customScaffoldMessanger(
    BuildContext context, String message, Color backgroundColor) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: backgroundColor,
    ),
  );
}
