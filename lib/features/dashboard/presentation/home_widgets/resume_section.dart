import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/start_lesson_button.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:flutter/material.dart';

class ResumeSection extends StatelessWidget {
  ResumeSection({super.key});

  final List<Map<String, String>> items = [
    {
      "title": "Interview Skills",
      "subtitle": "Lesson 1: Introduction",
      "action": "Start",
    },
    {
      "title": "Advanced Pronunciation",
      "subtitle": "Lesson 1: Voice Modulation",
      "action": "Resume",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtils.screenHeight(context) * 0.2,
      width: ScreenUtils.screenWidth(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            margin: const EdgeInsets.fromLTRB(0, 16, 16,16),
            padding: const EdgeInsets.all(16),
            width: ScreenUtils.screenWidth(context) * 0.7,
            decoration: BoxDecoration(
              color: ColorsClass.bg,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item["title"]!, style: TextStylesClass.s2),
                SizedBox(height: ScreenUtils.h1(context)),
                Text(item["subtitle"]!, style: TextStylesClass.customize(TextStylesClass.placeholder, color: ColorsClass.lightgrey)),
                const Spacer(),
                StartButton(
                  action: item["action"]!,
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}