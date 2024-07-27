import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/auth_widgets/dot_indicator.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingView extends ConsumerWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: themedata.scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(ScreenUtils.w3(context),
            ScreenUtils.h6(context) * 1, ScreenUtils.w3(context), 0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: ScreenUtils.screenWidth(context) * 0.64,
                    width: ScreenUtils.screenWidth(context) * 0.64,
                    child:
                        const Image(image: AssetImage('lib/asssets/logo.png')),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtils.h4(context),
              ),
              const DotIndicator(
                numberOfDots: 6,
                activeDotIndex: 0,
              ),
              SizedBox(
                height: ScreenUtils.h3(context),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtils.w3(context)),
                    child: Column(
                      children: [
                        const Text(
                          'Find a new skill to learn',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorsClass.textGrey,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: ScreenUtils.h3(context)),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit ipsum dol. Dolor sit amet, consectetur.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorsClass.textGrey,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtils.h4(context),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtils.w2(context) * 0.2),
                    child: BottomButton(
                      height: ScreenUtils.h3(context) * 2,
                      text: "Get Started",
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.signIn);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
