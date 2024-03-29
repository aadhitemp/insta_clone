import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput(
      {super.key,
      this.isPass = false,
      required this.hintText,
      required this.textEditingController,
      required this.textInputType});
  final bool isPass;
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      obscureText: isPass,
      keyboardType: textInputType,
    );
  }
}
