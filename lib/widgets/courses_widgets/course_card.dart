import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String id;
  final String name;
  const CourseCard({super.key, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.transparent,
        child: SizedBox(
          height: ScreenUtils.screenHeight(context) * 0.18,
          width: ScreenUtils.screenWidth(context) * 0.9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.subCourse,
                      arguments: id);
                },
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/assets/placeholder_1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Text(
                                  name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.10,
                                  ),
                                )),
                            const Expanded(
                              flex: 1,
                              child: Text(
                                "Learn how to speak English in a social setting",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
