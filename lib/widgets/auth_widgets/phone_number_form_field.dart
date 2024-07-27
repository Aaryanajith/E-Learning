import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class PhoneNumberFormField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode currentFocusNode;
  final FocusNode nextFocusNode;
  final String hintText;

  const PhoneNumberFormField({
    super.key,
    required this.controller,
    required this.currentFocusNode,
    required this.nextFocusNode,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: currentFocusNode,
      onFieldSubmitted: (_) {
        FocusScope.of(context).requestFocus(nextFocusNode);
      },
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
