import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IconClickView extends ConsumerWidget {
  const IconClickView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const ELearningAppBar(
        title: "", 
        issplash: false,
        backButton: true,
      ),
      backgroundColor: ColorsClass.bg,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtils.w2(context)),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: ScreenUtils.w5(context),
                  width: ScreenUtils.w5(context),
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                ),
                SizedBox(height: ScreenUtils.h2(context)),
                const Text("Name Surname"),
                const Text("name123@gmail.com"),
                SizedBox(
                  height: ScreenUtils.h1(context),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: ColorsClass.themeYellow,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Padding(
                    padding: EdgeInsets.all(ScreenUtils.w1(context)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            child: Icon(
                          Icons.token_outlined,
                          color: Theme.of(context).primaryColor,
                        )),
                        Flexible(
                          child: Text(
                            "560 Credits",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: ScreenUtils.h4(context)),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 20,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: EdgeInsets.all(ScreenUtils.w3(context)),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                  SizedBox(width: ScreenUtils.w2(context)),
                  const Expanded(
                    child: Text(
                      "View Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtils.h2(context)),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 20,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: EdgeInsets.all(ScreenUtils.w3(context)),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.settings_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                  SizedBox(width: ScreenUtils.w2(context)),
                  const Expanded(
                    child: Text(
                      "Account Settings",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtils.h2(context)),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 20,
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: EdgeInsets.all(ScreenUtils.w3(context)),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.support_agent_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                  SizedBox(width: ScreenUtils.w2(context)),
                  const Expanded(
                    child: Text(
                      "Contact Support",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
