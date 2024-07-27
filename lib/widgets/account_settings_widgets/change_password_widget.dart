import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangePassword extends ConsumerWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          onFieldSubmitted: (value) {},
          decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            hintText: 'Enter Current Password',
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: ScreenUtils.h2(context)),
        TextFormField(
          onFieldSubmitted: (value) {},
          decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            hintText: 'Enter New Password',
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: ScreenUtils.h2(context)),
        TextFormField(
          onFieldSubmitted: (value) {},
          decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            hintText: 'Re Enter Password',
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: ScreenUtils.h2(context)),
        BottomButton(text: "Save", onPressed: () {})
      ],
    );
  }
}
