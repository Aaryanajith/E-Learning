import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';

void showDeleteAccountDialog(BuildContext context, void Function() onPressed) {
  showDialog(
    context: context,
    builder: (ctx) {
      return AlertDialog(
        backgroundColor: ColorsClass.white,
        title: const Text(
          'Are you sure?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorsClass.black,
            fontSize: 22,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
        ),
        content: const Text(
          'This action cannot be undone.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorsClass.black,
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          BottomButton(
            text: 'Yes, Delete Account',
            onPressed: onPressed,
          ),
          SizedBox(
            height: ScreenUtils.h2(context),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'No, Return to Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      );
    },
  );
}
