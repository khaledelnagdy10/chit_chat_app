import 'package:chit_chat/constans.dart';
import 'package:chit_chat/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.lableText,
      required this.prefixIcon,
      required this.onChanged});
  final String lableText;
  final Icon prefixIcon;
  final Function(String value) onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: lableText,
          labelStyle: Style.textStyle18,
          prefixIcon: prefixIcon,
          prefixIconColor: kPrimaryColor,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor)),
        ),
      ),
    );
  }
}
