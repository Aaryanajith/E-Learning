// ignore_for_file: use_build_context_synchronously

import 'package:e_learning_mobile/features/auth/application/signup_state_notifer.dart';
import 'package:e_learning_mobile/features/auth/data/signup_notifier.dart';

import 'package:e_learning_mobile/features/auth/presentation/sign_in_widgets/sign_in_welcome.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_up_widgets.dart/sign_up_email.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_up_widgets.dart/sign_up_phone.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_up_widgets.dart/sign_up_radios.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/google_auth_button.dart';
import 'package:e_learning_mobile/widgets/new_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends ConsumerWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupNotifier = ref.read(signupStateProvider.notifier);
    final signupState = ref.watch(signupStateProvider);
    return Scaffold(
      appBar: const ELearningAppBar(
        title: 'Register',
        issplash: false,
        backButton: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            const SignInWelcome(
              mainText: "Hello, welcome!",
              subText: "First, let's create your account.",
            ),
            SizedBox(height: 48.h),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter email or phone",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: 8.h),
                  const SignUpRadios(),
                  SizedBox(height: 8.h),
                  signupState.emailorphone == 1
                      ? const SignUpEmail()
                      : const SignUpPhone(),
                  SizedBox(height: 48.h),
                  GestureDetector(

                      // Needs to be changes once the backend is updated
                      onTap: () async {
                        final String username = signupNotifier
                            .usernameController.text = "hellothere";
                        final String password =
                            signupNotifier.passwordController.text = "test";
                        const String phoneNumber = "1234567890";
                        final String email =
                            signupNotifier.emailController.text = "a@a.com";

                        final bool success = await ref
                            .read(signUpNotifierProvider.notifier)
                            .register(username, password, phoneNumber, email);
                        if (success) {
                          Navigator.pushNamed(context, RouteNames.signIn);
                        }
                      },
                      child: const NewGradientButton(label: "Register")),
                  SizedBox(height: 16.h),
                  const GoogleAuthButton()
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                      color: ColorsClass.lightmodeNeutral500,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.signUp);
                    },
                    child: Text(
                      "Register",
                      style: GoogleFonts.poppins(
                        color: ColorsClass.primaryTheme,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
