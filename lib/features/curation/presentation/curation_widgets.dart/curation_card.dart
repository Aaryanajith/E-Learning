import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurationCard extends ConsumerWidget {
  const CurationCard({
    super.key,
    required this.isForYouCard,
  });

  final bool isForYouCard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 36,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: isForYouCard ? null : ColorsClass.white,
        gradient: isForYouCard ? ColorsClass.primaryThemeGradient : null,
      ),
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Intermediate Professional English",
              style: TextStylesClass.customize(TextStylesClass.h6,
                  color:
                      isForYouCard ? Colors.white : ColorsClass.primaryTheme),
            ),
            SizedBox(height: 8.h),
            Text(
              "instructed by Jane Doe",
              style: TextStylesClass.customize(TextStylesClass.ctaXS,
                  color:
                      isForYouCard ? ColorsClass.white : ColorsClass.lightgrey),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.language,
                  color:
                      isForYouCard ? ColorsClass.white : ColorsClass.lightgrey,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  "Malayalam -> English",
                  style: TextStylesClass.customize(TextStylesClass.ctaXS,
                      color: isForYouCard
                          ? ColorsClass.white
                          : ColorsClass.lightgrey),
                ),
                SizedBox(width: 16.w),
                Icon(
                  Icons.import_contacts,
                  color:
                      isForYouCard ? ColorsClass.white : ColorsClass.lightgrey,
                ),
                SizedBox(width: 16.w),
                Text(
                  "73 Lessons",
                  style: TextStylesClass.customize(TextStylesClass.ctaXS,
                      color: isForYouCard
                          ? ColorsClass.white
                          : ColorsClass.lightgrey),
                ),
              ],
            ),
            const SizedBox(height: 16),
            BottomButton(
              text: "View Plans",
              onPressed: () {},
              textColor:
                  isForYouCard ? ColorsClass.primaryTheme : ColorsClass.white,
              useGradient: false,
              backgroundColour:
                  isForYouCard ? ColorsClass.white : ColorsClass.primaryTheme,
            )
          ],
        ),
      ),
    );
  }
}
