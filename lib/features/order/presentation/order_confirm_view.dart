import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/widgets/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderConfirmView extends StatelessWidget {
  const OrderConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themedata.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtils.w2(context),
            vertical: ScreenUtils.h2(context)),
          child: Column(
            children: [
              Padding(
            padding: EdgeInsets.all(50.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(image: AssetImage('lib/assets/logo.png')),
                SizedBox(height: 32.h),
                const Text(
                  'Your subscription is confirmed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorsClass.textGrey1,
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 32.h),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'You can access your courses from the ',
                        style: TextStyle(
                          color: ColorsClass.textGrey1,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Courses',
                        style: TextStyle(
                          color: ColorsClass.textGrey1,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ' tab.',
                        style: TextStyle(
                          color: ColorsClass.textGrey1,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SubmitButton(text: 'Continue', onTap: () => {})
            ],
          )
        ),
      ),
    );
  }
}
