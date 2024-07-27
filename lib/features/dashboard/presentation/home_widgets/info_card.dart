import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String imageAssetPath;
  final String mainValue;
  final String subtext;

  const InfoCard({
    Key? key,
    required this.title,
    required this.imageAssetPath,
    required this.mainValue,
    required this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtils.screenWidth(context) * 0.4,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: ColorsClass.bg,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
           BoxShadow(
            color: Color(0x19000000),
            blurRadius: 16,
            offset: Offset(0, 0),
            spreadRadius: 0,
            ) 
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStylesClass.p1,
          ),
          SizedBox(height: ScreenUtils.h2(context)),
          Image.asset(
            imageAssetPath,
            height: 72,
            width: 72,
          ),
          SizedBox(height: ScreenUtils.h2(context)),
          Text(
            mainValue,
            style: TextStylesClass.h2
          ),
          SizedBox(height: ScreenUtils.h1(context)),
          Text(
            subtext,
            style: TextStylesClass.p1
          ),
        ],
      ),
    );
  }
}