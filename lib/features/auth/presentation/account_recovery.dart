import 'package:e_learning_mobile/features/auth/application/ar_tab_state_provider.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_in_widgets/sign_in_welcome.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:e_learning_mobile/widgets/new_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSettingsPageView extends ConsumerWidget {
  const AccountSettingsPageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(arCurrentTabProvider);
    final controller = PageController(initialPage: currentIndex.currentTab);

    ref.listen(arCurrentTabProvider, (_, nextIndex) {
      controller.jumpToPage(nextIndex.currentTab);
    });
    return PageView(
      onPageChanged: (index) {
        ref.read(arCurrentTabProvider.notifier).setTab(index);
      },
      controller: controller,
      children: const [
        AccountRecoveryQuery(),
        AccountRecoveryOTP(),
        AccountRecoveryChangePass()
      ],
    );
  }
}

class AccountRecoveryChangePass extends ConsumerWidget {
  const AccountRecoveryChangePass({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passController = TextEditingController();
    final confirmPassController = TextEditingController();
    return Scaffold(
      appBar: const ELearningAppBar(
        title: 'Account Recovery', 
        issplash: false, 
        backButton: false,
        ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignInWelcome(
                mainText: "Reset Password",
                subText: "Create a new password to log back into your account"),
            SizedBox(height: 48.h),
            Text(
              "Enter new password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            NewTextField(
              labeltext: "New password",
              controller: passController,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "Confirm password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            NewTextField(
              labeltext: "Confirm password",
              controller: confirmPassController,
            ),
            SizedBox(height: 48.h),
            Center(
              child: BottomButton(
                text: "Continue",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.pageView);
                }, 
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AccountRecoveryQuery extends ConsumerWidget {
  const AccountRecoveryQuery({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndexNotifier = ref.read(arCurrentTabProvider.notifier);
    final emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text("Account Recovery",
            style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SignInWelcome(
                mainText: "Forgot Password",
                subText: "No worries. We'll send you a code in your email."),
            SizedBox(height: 48.h),
            Text(
              "Enter registered email",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            NewTextField(
                labeltext: "Enter email address", controller: emailController),
            SizedBox(height: 48.h),
            Center(
                child: BottomButton(
                    text: "Continue",
                    onPressed: () {
                      currentIndexNotifier.setTab(1);
                    }))
          ],
        ),
      ),
    );
  }
}

class AccountRecoveryOTP extends ConsumerWidget {
  const AccountRecoveryOTP({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndexNotifier = ref.read(arCurrentTabProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text("Account Recovery",
            style: Theme.of(context).textTheme.headlineLarge),
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
                    text: "Continue",
                    onPressed: () {
                      currentIndexNotifier.setTab(2);
                    })),
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
