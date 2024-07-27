import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String) onFieldSubmitted;

  const InputFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.focusNode,
    required this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: ColorsClass.lightmodeNeutral500,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
