import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class IntroVideo extends StatelessWidget {
  const IntroVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtils.screenHeight(context) * 0.37,
      decoration: ShapeDecoration(
        color: ColorsClass.bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 16,
            offset: Offset(-2, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: ScreenUtils.screenHeight(context) * 0.2,
                      width: double.infinity,
                      child: Image.asset(
                        'lib/assets/placeholder_6.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: ScreenUtils.screenHeight(context) * 0.2 - 29,
                right: ScreenUtils.w3(context), 
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: const BoxDecoration(
                    gradient: ColorsClass.primaryThemeGradient,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      size: 30,
                      color: ColorsClass.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Welcome to MBRYO',
              style: TextStylesClass.customize(TextStylesClass.s2, color: ColorsClass.primaryTheme),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscia elit ipsum dol. Dolor sit amet, consectetur amet adipiscing elit.',
              style: TextStylesClass.customize(
                TextStylesClass.p2,
                color: ColorsClass.lightgrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}