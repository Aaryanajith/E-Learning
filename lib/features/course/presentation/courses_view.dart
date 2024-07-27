import 'package:e_learning_mobile/features/course/data/courses_provider.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/courses_widgets/course_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Courses extends ConsumerWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courses = ref.watch(getCoursesProvider);

    return Scaffold(
      backgroundColor: ColorsClass.bg,
    appBar: const ELearningAppBar(
        title: "Courses", 
        issplash: false, 
        backButton: true,
      ),
      body: Container(
        decoration: const BoxDecoration(color: ColorsClass.bg),
        child: Container(
          color: ColorsClass.bg,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "My Courses",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtils.screenWidth(context),
                    child: courses.when(
                      data: (courseList) {
                        return Column(
                          children: courseList
                              .map((e) => CourseCard(
                                    name: e.name,
                                    id: e.id,
                                  ))
                              .toList(),
                        );
                      },
                      error: (e, _) {
                        return Text(e.toString());
                      },
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 9),
                    child: Text(
                      "Explore More Courses",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                  courses.when(data: (courseList) {
                    return Column(
                      children: courseList
                          .map((e) => CourseCard(
                                name: e.name,
                                id: e.id,
                              ))
                          .toList(),
                    );
                  }, error: (e, _) {
                    return Text(e.toString());
                  }, loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
