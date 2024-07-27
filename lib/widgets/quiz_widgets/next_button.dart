import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
    required this.text1,
    required this.text2,
    required this.onPressed,
    this.width,
    this.height,
  }) : super(key: key);

  final String text1;
  final String text2;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: ScreenUtils.screenWidth(context) * 0.3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            // Container(
            //   width: 24,
            //   height: 24,
            //   clipBehavior: Clip.antiAlias,
            //   decoration: BoxDecoration(),
            //   child: Icon(
            //     Icons.av_timer_outlined,
            //     color: ColorsClass.white,
            //   ),
            // ),
            // const SizedBox(width: 5),
            // Text(
            //   text2,
            //   textAlign: TextAlign.right,
            //   style: const TextStyle(
            //     color: Colors.white,
            //     fontSize: 22,
            //     fontFamily: 'Roboto',
            //     fontWeight: FontWeight.w700,
            //     height: 0.06,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
