import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:e_learning_mobile/features/dashboard/application/live_classes_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LiveClassSection extends ConsumerWidget {
  const LiveClassSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final liveClassState = ref.watch(liveClassProvider);
    final liveClassNotifier = ref.read(liveClassProvider.notifier);

    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: EasyDateTimeLine(
          initialDate: DateTime.now(),
          activeColor: ColorsClass.primaryTheme,
          onDateChange: (selectedDate) {
            liveClassNotifier.setSelectedDate(selectedDate);
          },
          headerProps: const EasyHeaderProps(
            showHeader: false,
          ),
          dayProps: EasyDayProps(
            height: 74,
            dayStructure: DayStructure.dayStrDayNum,
            todayStyle:  DayStyle(
              dayNumStyle: TextStylesClass.customize(
                TextStylesClass.h5 , color: ColorsClass.lightgrey
              ),
              dayStrStyle: TextStylesClass.customize(
                TextStylesClass.p1 , color: ColorsClass.lightgrey
              ),
            ),
            activeDayStyle: DayStyle(
              dayNumStyle: TextStylesClass.customize(
                TextStylesClass.h5 , color: ColorsClass.bg
              ),
              dayStrStyle: TextStylesClass.customize(
                TextStylesClass.p1 , color: ColorsClass.bg
              ),
            ),
            inactiveDayStyle: DayStyle(
              dayNumStyle: TextStylesClass.customize(
                TextStylesClass.h5 , color: ColorsClass.lightgrey
              ),
              dayStrStyle: TextStylesClass.customize(
                TextStylesClass.p1 , color: ColorsClass.lightgrey
              ),
            ),
          ),
        ),
        ),
        FutureBuilder(
          future: liveClassNotifier.fetchLiveClasses(liveClassState),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final liveClasses = snapshot.data as List<LiveClass>;
              return Container(
                decoration: ShapeDecoration(
                  color: liveClasses.isEmpty ? const Color(0xFFE4E1CD) : ColorsClass.secondaryTheme,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                width: double.infinity,
                height: ScreenUtils.screenHeight(context) * 0.06,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: liveClasses.isEmpty
                    ? Text(
                        "Nothing to show here.",
                        style: TextStylesClass.customize(
                          TextStylesClass.p2,
                          color: ColorsClass.lightTextGrey
                        ),
                        textAlign: TextAlign.center,
                      )
                    : GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text(
                              liveClasses[0].subject,
                              style: TextStylesClass.customize(
                                TextStylesClass.p2,
                                color: ColorsClass.textGrey1
                              ),
                            ),
                            Text(
                              liveClasses[0].time,
                              style: TextStylesClass.customize(
                                TextStylesClass.p2,
                                color: ColorsClass.textGrey1
                              ),
                            ),
                        ],
                      ),
                    ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },

        ),
    ],
);
  }
}