import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 36,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: ColorsClass.lightmodeNeutral100, width: 2.sp),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Advanced Pronouncation and Accent",
              style: TextStylesClass.customize(TextStylesClass.assistive,
                  color: ColorsClass.primaryTheme, fontWeight: FontWeight.w500),
            ),
            Text(
              "Live Class #24: Rolling your Tongue",
              style: TextStylesClass.customize(
                TextStylesClass.s2,
                color: ColorsClass.lightmodeNeutral500,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              "12:00 pm to 01:30 pm",
              style: TextStylesClass.customize(
                TextStylesClass.ctaS,
                color: ColorsClass.lightmodeNeutral500,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
