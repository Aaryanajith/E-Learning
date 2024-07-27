import 'package:e_learning_mobile/features/auth/application/signup_state_notifer.dart';
import 'package:e_learning_mobile/widgets/new_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPhone extends ConsumerWidget {
  const SignUpPhone({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupNotifier = ref.read(signupStateProvider.notifier);
    return Column(
      children: [
        NewTextField(
            controller: signupNotifier.phonenumberController,
            labeltext: "Enter Phone number")
      ],
    );
  }
}
