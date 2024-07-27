import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum VarModuleCard { variation1, variation2 }

class ModuleCard extends ConsumerWidget {
  final String id;
  final String title;
  final bool inProgress;
  const ModuleCard(
      {super.key,
      required this.title,
      required this.inProgress,
      required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RouteNames.lesson, arguments: id);
        },
        child: Container(
          height: ScreenUtils.screenHeight(context) * 0.11,
          decoration: BoxDecoration(
            color:
                inProgress ? Theme.of(context).primaryColor : ColorsClass.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: inProgress ? ColorsClass.white : Colors.black,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        inProgress ? "Resume" : "Restart",
                        style: TextStyle(
                          color: inProgress
                              ? ColorsClass.white
                              : Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "100 %",
                        style: TextStyle(
                          color: inProgress
                              ? ColorsClass.white
                              : ColorsClass.lightmodeNeutral500,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Container(
                              color: ColorsClass.lightmodeNeutral500,
                              height: 5,
                              width: ScreenUtils.screenWidth(context) * 0.7,
                            ),
                            Container(
                              color: inProgress
                                  ? ColorsClass.white
                                  : Theme.of(context).primaryColor,
                              height: 5,
                              width: ScreenUtils.screenWidth(context) * 0.7,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
