import 'package:e_learning_mobile/features/auth/application/signin_state_notifier.dart';
import 'package:e_learning_mobile/widgets/new_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPhone extends ConsumerWidget {
  const SignInPhone({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signinNotifier = ref.read(signinStateProvider.notifier);
    return Column(
      children: [
        NewTextField(
            controller: signinNotifier.phonenumberController,
            labeltext: "Enter Phone number")
      ],
    );
  }
}
