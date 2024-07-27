import 'package:e_learning_mobile/features/auth/application/signup_state_notifer.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/widgets/new_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpEmail extends ConsumerWidget {
  const SignUpEmail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupNotifer = ref.read(signupStateProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NewTextField(
          controller: signupNotifer.usernameController,
          labeltext: "Enter email address",
        ),
        SizedBox(height: 32.h),
        Text(
          "Password",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 8.h),
        NewTextField(
            controller: signupNotifer.passwordController,
            labeltext: "Enter password"),
        SizedBox(height: 32.h),
        Text(
          "ConfirmPassword",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 8.h),
        NewTextField(
            controller: signupNotifer.confirmpasswordController,
            labeltext: "Confirm password"),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                    height: 8.h,
                    width: 8.h,
                    child: Checkbox(value: true, onChanged: (boolean) {})),
                SizedBox(width: 8.w),
                Text(
                  "Remember me",
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorsClass.lightmodeNeutral500),
                )
              ],
            ),
            Text(
              "Forgot Password",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorsClass.red),
            )
          ],
        ),
      ],
    );
  }
}
