import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String action;

  const StartButton({Key? key, required this.onPressed , required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: ScreenUtils.screenHeight(context) * 0.05,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: ColorsClass.primaryThemeGradient,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              action,
              style: TextStylesClass.customize(TextStylesClass.p1 , color: ColorsClass.bg),
            ),
          ),
        ),
      );
  }
}