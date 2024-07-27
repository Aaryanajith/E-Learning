import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AIChatView extends ConsumerWidget {
  const AIChatView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const ELearningAppBar(
        title: "Speech Practice",
        issplash: false,
        backButton: true,
      ),
      backgroundColor: ColorsClass.bg,
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            color: Colors.white,
            height: ScreenUtils.h6(context),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: ScreenUtils.h3(context),
            child: Container(
              height: ScreenUtils.w6(context),
              width: ScreenUtils.w6(context),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: ColorsClass.white, width: 5),
              ),
              child: const Icon(
                Icons.mic,
                color: ColorsClass.white,
                size: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(ScreenUtils.w2(context)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(ScreenUtils.w2(context)),
                    child: const Text(
                      "Scenario",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      ScreenUtils.w2(context),
                      0,
                      ScreenUtils.w2(context),
                      ScreenUtils.w2(context),
                    ),
                    child: const Text(
                      "You are seated in a restaurant around lunchtime. The waiter approaches you. Order a meal and respond appropriately to the waiter’s prompts.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: ScreenUtils.h3(context)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: ScreenUtils.screenWidth(context) * 0.12,
                  width: ScreenUtils.screenWidth(context) * 0.12,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: ScreenUtils.w2(context)),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: ColorsClass.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(ScreenUtils.w2(context)),
                      child: const Text(
                          "Welcome to Berry’s Cafe! Can I take your order?"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtils.h2(context)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.all(ScreenUtils.w2(context)),
                      child: const Text(
                        "Yes, I’ll have the vegetable fried rice and a bowl of gobi manchurian.",
                        style: TextStyle(color: ColorsClass.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: ScreenUtils.w2(context)),
                Container(
                  height: ScreenUtils.screenWidth(context) * 0.12,
                  width: ScreenUtils.screenWidth(context) * 0.12,
                  decoration: const BoxDecoration(
                    color: ColorsClass.themeGreen,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
