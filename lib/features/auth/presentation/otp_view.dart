import 'package:e_learning_mobile/features/auth/presentation/sign_in_widgets/sign_in_welcome.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpView extends ConsumerWidget {
  final String title;
  const OtpView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: ELearningAppBar(
        title: title,
        issplash: false,
        backButton: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SignInWelcome(
                mainText: "Enter OTP",
                subText: "We sent a 6-digit code to +918848925242"),
            SizedBox(height: 48.h),
            Center(
              child: OtpTextField(
                showFieldAsBox: true,
                fieldHeight: 61.h,
                fieldWidth: 58.w,
                numberOfFields: 6,
                decoration: const InputDecoration(),
                focusedBorderColor: ColorsClass.primaryTheme,
              ),
            ),
            SizedBox(height: 48.h),
            Center(
                child: BottomButton(
              text: "Verify",
              onPressed: () {
                title == "Login"
                    ? Navigator.pushNamed(context, RouteNames.pageView)
                    : Navigator.pushNamed(context, RouteNames.accountRecovery);
              },
              useGradient: false,
            )),
            SizedBox(height: 16.h),
            Text(
              "Resend code in 0.23",
              style: GoogleFonts.poppins(
                color: ColorsClass.verylightgrey,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
