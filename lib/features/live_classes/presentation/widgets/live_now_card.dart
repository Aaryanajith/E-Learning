import 'package:cometchat_calls_uikit/cometchat_calls_uikit.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveNowCard extends ConsumerWidget with CometChatCallsEventsListener {
  const LiveNowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CometChatOngoingCall(
              callSettingsBuilder: CallSettingsBuilder()
                ..enableDefaultLayout = true
                ..setAudioOnlyCall = false
                ..listener = this
                ..startWithVideoMuted = true
                ..showSwitchCameraButton = true,
              // the developer needs to create a valid instance of CallSettingsBuilder first before using this widget
              sessionId: "supergroup",
              callWorkFlow: CallWorkFlow.directCalling,
            ),
          ),
        );
      },
      child: Container(
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          gradient: ColorsClass.primaryThemeGradient,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Intermediate English",
                style: TextStylesClass.customize(TextStylesClass.ctaXS,
                    color: ColorsClass.white),
              ),
              Text(
                "Live Class #23: Needs vs Wants",
                style: TextStylesClass.customize(
                  TextStylesClass.s2,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "STARTED 23 MIN AGO",
                style: TextStylesClass.customize(TextStylesClass.overline2,
                    color: ColorsClass.white),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text(
                          " Join",
                          style: TextStylesClass.customize(TextStylesClass.h6,
                              color: ColorsClass.white),
                        ),
                        SizedBox(width: 8.w),
                        const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: ColorsClass.white,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
