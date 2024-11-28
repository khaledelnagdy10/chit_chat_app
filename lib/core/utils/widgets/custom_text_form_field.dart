import 'package:chit_chat/constans.dart';
import 'package:chit_chat/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.lableText});
  final String lableText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: lableText,
        labelStyle: Style.textStyle18,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor)),
      ),
    );
  }
}
