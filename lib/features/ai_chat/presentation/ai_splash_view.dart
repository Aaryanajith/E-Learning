import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';

class AISplash extends StatelessWidget {
  const AISplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ELearningAppBar(
          title: "SpeechPractice", 
          issplash: true, 
          backButton: false,
        ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: ScreenUtils.screenHeight(context) * 0.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/speechpractice_splash.png"),
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(height: ScreenUtils.h4(context)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenUtils.w2(context)),
            child: const Text(
              'Improve your conversational English by responding to scenario-based prompts',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: ScreenUtils.h4(context)),
          Padding(
            padding: EdgeInsets.fromLTRB(ScreenUtils.w2(context), 0,
                ScreenUtils.w2(context), ScreenUtils.w2(context)),
            child: BottomButton(
                text: "Next",
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.aIChatView);
                },
                backgroundColour: ColorsClass.white),
          ),
        ],
      ),
    );
  }
}
