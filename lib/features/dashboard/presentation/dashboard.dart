import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/home_app_bar.dart';
import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/live_classes_section.dart';
import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/stats_section.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/home_text.dart';
import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/intro_video.dart';
import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/resume_section.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar(profileIcon: Image.asset('lib/assets/placeholder_5.png')),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  height: ScreenUtils.screenHeight(context) * 0.5,
                  decoration: const BoxDecoration(
                    gradient: ColorsClass.homeGradient,
                  ),
                ),
                Column(
                    children: [
                     SizedBox(height: ScreenUtils.h1(context)),
                     Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Hello, Ananya! 👋",
                            style: TextStylesClass.customize(TextStylesClass.h5, color: ColorsClass.white),
                          ),
                        ),
                        SizedBox(height: ScreenUtils.h2(context)),
                        const IntroVideo(),
                        SizedBox(height: ScreenUtils.h3(context)),
                        HomeText(text: "Continue your learning", style: TextStylesClass.s1),
                        HomeText(text: "Complete a lesson everyday to maintain your streak", style: TextStylesClass.customize(TextStylesClass.caption, color: ColorsClass.lightgrey)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: ResumeSection(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        SizedBox(height: ScreenUtils.h2(context)),
                        HomeText(text: "Live Classes", style: TextStylesClass.s1),
                        const LiveClassSection(),
                        SizedBox(height: ScreenUtils.h2(context)),
                        HomeText(text: "Your Stats", style: TextStylesClass.s1),
                        const StatsSection(streakDays: 5, ranking: 18),
                        SizedBox(height: ScreenUtils.h2(context)),
                      ],
                    ),
                  ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}