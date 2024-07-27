import 'package:flutter/material.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColour,
    this.borderRadius = 100,
    this.useGradient = true,
    this.textColor,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColour;
  final double borderRadius;
  final bool useGradient;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        gradient: useGradient ? ColorsClass.primaryThemeGradient : null,
        color: useGradient
            ? null
            : (backgroundColour ?? Theme.of(context).primaryColor),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(ScreenUtils.h2(context)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: textColor ??
                (backgroundColour == null
                    ? ColorsClass.offWhite
                    : Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
