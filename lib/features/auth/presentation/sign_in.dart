// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:e_learning_mobile/features/notifications/data/notification_service.dart';
import 'package:e_learning_mobile/features/auth/application/signin_state_notifier.dart';
import 'package:e_learning_mobile/features/auth/data/login_notifier.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_in_widgets/sign_in_email.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_in_widgets/sign_in_phone.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_in_widgets/sign_in_radios.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_in_widgets/sign_in_welcome.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/google_auth_button.dart';
import 'package:e_learning_mobile/widgets/new_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInView extends ConsumerWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.read(signinStateProvider.notifier);
    final signInState = ref.watch(signinStateProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const ELearningAppBar(
        title: 'Login',
        issplash: false,
        backButton: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            const SignInWelcome(
                mainText: "Welcome back!", subText: "Good to see you again."),
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
                  const SignInRadios(),
                  SizedBox(height: 8.h),
                  signInState.emailorphone == 1
                      ? const SignInEmail()
                      : const SignInPhone(),
                  SizedBox(height: 48.h),
                  GestureDetector(
                    onTap: () async {
                      final username = signInNotifier.usernameController.text;
                      final password = signInNotifier.passwordController.text;

                      final bool check = await ref
                          .read(loginNotifierProvider.notifier)
                          .getSignInToken(username, password);
                      
                      if (check) {
                        NotificationService.initialize();
                        Navigator.pushNamed(context, RouteNames.otpView,
                            arguments: "Login");
                      } else {
                        debugPrint("failed");
                      }
                    },
                    child: const NewGradientButton(label: "Login"),
                  ),
                  SizedBox(height: 16.h),
                  const GoogleAuthButton(),
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
                      Navigator.pushNamed(
                        context,
                        RouteNames.signUp,
                      );
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
