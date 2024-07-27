import 'package:e_learning_mobile/features/auth/application/signup_state_notifer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpRadios extends ConsumerWidget {
  const SignUpRadios({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.read(signupStateProvider.notifier);
    final signUpState = ref.watch(signupStateProvider);
    return Row(
      children: [
        SizedBox(
          height: 16.h,
          width: 16.w,
          child: Radio(
            value: 1,
            groupValue: signUpState.emailorphone,
            onChanged: signUpNotifier.handleRadioValueChange,
          ),
        ),
        SizedBox(width: 8.w),
        const Text('Email'),
        SizedBox(width: 32.w),
        SizedBox(
          height: 16.h,
          width: 16.w,
          child: Radio(
            value: 2,
            groupValue: signUpState.emailorphone,
            onChanged: signUpNotifier.handleRadioValueChange,
          ),
        ),
        SizedBox(width: 8.w),
        const Text('Phone Number'),
      ],
    );
  }
}
