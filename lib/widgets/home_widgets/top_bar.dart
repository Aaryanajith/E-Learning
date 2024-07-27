import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtils.screenHeight(context) * 0.09,
      width: ScreenUtils.screenWidth(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            width: 52,
            height: 24,
            decoration: ShapeDecoration(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 14,
                  height: 14,
                  child: Icon(
                    Icons.currency_rupee_rounded,
                    color: ColorsClass.white,
                    size: 14,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  '560',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                    letterSpacing: 0.50,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const SizedBox(
            width: 24,
            height: 24,
            child: Icon(Icons.notifications),
          ),
          const SizedBox(width: 215),
          SizedBox(
            width: 40,
            height: 40,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/placeholder_5.png')),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
