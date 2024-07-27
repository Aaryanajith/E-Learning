import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final obscureTextProvider = StateProvider<bool>((ref) => true);

class PasswordFormField extends ConsumerWidget {
  final String hintText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final GlobalKey<FormState> formKey;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?) validator;

  const PasswordFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.focusNode,
    required this.formKey,
    required this.validator,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscureText = ref.watch(obscureTextProvider);

    return Form(
      key: formKey,
      child: TextFormField(
        obscuringCharacter: '*',
        obscureText: obscureText,
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsClass.answerPopUpRed),
            borderRadius: BorderRadius.circular(100),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsClass.answerPopUpRed),
            borderRadius: BorderRadius.circular(100),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: ColorsClass.lightmodeNeutral500,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              ref.read(obscureTextProvider.notifier).state = !obscureText;
            },
            child: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: ColorsClass.lightmodeNeutral500,
            ),
          ),
        ),
        focusNode: focusNode,
        validator: validator,
      ),
    );
  }
}
