import 'package:e_learning_mobile/features/live_classes/presentation/widgets/live_now_card.dart';
import 'package:e_learning_mobile/features/live_classes/presentation/widgets/upcoming_card.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveClasses extends StatelessWidget {
  const LiveClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ELearningAppBar(
        backButton: true,
        title: "Live Classes",
        issplash: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Live Now",
              style: TextStylesClass.customize(TextStylesClass.s1,
                  color: ColorsClass.lightmodeNeutral500),
            ),
            SizedBox(height: 16.h),
            const LiveNowCard(),
            SizedBox(height: 32.h),
            Text(
              "Upcoming Classes",
              style: TextStylesClass.customize(TextStylesClass.s1,
                  color: ColorsClass.lightmodeNeutral500),
            ),
            SizedBox(height: 16.h),
            Text(
              "Thursday, 13 June",
              style: TextStylesClass.customize(TextStylesClass.ctaS,
                  color: ColorsClass.lightmodeNeutral500),
            ),
            SizedBox(height: 16.h),
            const UpcomingCard(),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }
}
