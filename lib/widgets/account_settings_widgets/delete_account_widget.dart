import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteAccount extends ConsumerWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Text(
          'This will erase your data and delete your account on Berry’s Academy. You will lose access to your courses and your subscription will be terminated.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: ScreenUtils.h2(context)),
        BottomButton(
          text: "Go to Account Deletion",
          onPressed: () {},
          backgroundColour: ColorsClass.white,
        ),
        SizedBox(height: ScreenUtils.h2(context)),
      ],
    );
  }
}
