import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Subscription extends ConsumerWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'You’re currently subscribed to',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: ScreenUtils.h1(context)),
          Text(
            'Group Study',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'Rs. 199/month',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: ScreenUtils.h2(context)),
          const Text(
            'Autorenews on: March 25, 2024',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: ScreenUtils.h2(context)),
          BottomButton(
            text: "Register",
            onPressed: () {
              Navigator.pushNamed(context, RouteNames.signUp);
            },
            backgroundColour: ColorsClass.white,
          ),
        ],
      ),
    );
  }
}
