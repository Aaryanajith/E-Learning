import 'package:e_learning_mobile/features/course/data/modules_provider.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/courses_widgets/expanded_module_card.dart';
import 'package:e_learning_mobile/widgets/courses_widgets/module_card.dart';
import 'package:e_learning_mobile/widgets/courses_widgets/not_started_module.card.dart';
import 'package:e_learning_mobile/widgets/error_widget.dart';
import 'package:e_learning_mobile/widgets/sub_courses_widgets/text_sub_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubCourse extends ConsumerWidget {
  final String? id;
  const SubCourse({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modules = ref.watch(getModulesProvider(id));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
            )),
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: ColorsClass.bg),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "English for Everyday Conve",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: ColorsClass.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextSubCourse(text: "Resume your learning"),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  height: ScreenUtils.screenHeight(context) * 0.11,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 70,
                        color: ColorsClass.white,
                      ),
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "The Basics of English Phonetics",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Video lesson • 7 minutes",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0.13,
                                letterSpacing: 0.50,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextSubCourse(text: "Modules")),
                modules.when(data: (modulelist) {
                  return Column(
                    children: modulelist.map((e) {
                      return ModuleCard(
                          id: e.id, title: e.name, inProgress: false);
                    }).toList(),
                  );
                }, error: (e, _) {
                  return ELErrorWidget(e: e);
                }, loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
                const ExpandedModuleCard(),
                const SizedBox(height: 10),
                const NotStartedModule(),
                const SizedBox(height: 10),
                const NotStartedModule(),
                const SizedBox(height: 10),
                const NotStartedModule(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
