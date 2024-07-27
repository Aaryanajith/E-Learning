import 'package:e_learning_mobile/features/auth/application/signin_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInRadios extends ConsumerWidget {
  const SignInRadios({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.read(signinStateProvider.notifier);
    final signInState = ref.watch(signinStateProvider);
    return Row(
      children: [
        SizedBox(
          height: 16.h,
          width: 16.w,
          child: Radio(
            value: 1,
            groupValue: signInState.emailorphone,
            onChanged: signInNotifier.handleRadioValueChange,
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
            groupValue: signInState.emailorphone,
            onChanged: signInNotifier.handleRadioValueChange,
          ),
        ),
        SizedBox(width: 8.w),
        const Text('Phone Number'),
      ],
    );
  }
}
