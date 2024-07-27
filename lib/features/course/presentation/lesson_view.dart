import 'package:apivideo_player/apivideo_player.dart';
import 'package:e_learning_mobile/features/course/application/lesson_state_notifier.dart';
import 'package:e_learning_mobile/features/course/data/video_provider.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LessonView extends ConsumerWidget {
  final String? id;
  const LessonView({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late ApiVideoPlayerController controller;
    final videoList = ref.watch(getVideosProvider(id ?? ""));
    final lessonState = ref.watch(lessonStateNotifierProvider);
    final lessonStateNotifier = ref.read(lessonStateNotifierProvider.notifier);
    final mainvideolist = videoList.value?.toList();

    return Scaffold(
      backgroundColor: ColorsClass.bg,
      appBar:const ELearningAppBar(
            title: "",
            issplash: false,
            backButton: false,
          ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (lessonState.lessonIndex > 0) {
                        lessonStateNotifier
                            .setLessonIndex(lessonState.lessonIndex - 1);
                      } else {
                        lessonStateNotifier
                            .setLessonIndex(mainvideolist!.length - 1);
                      }
                    },
                    child: Text(
                      "Previous",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Text(
                    "Lesson 3",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (mainvideolist!.length > lessonState.lessonIndex) {
                        lessonStateNotifier
                            .setLessonIndex(lessonState.lessonIndex + 1);
                      } else {
                        lessonStateNotifier.setLessonIndex(0);
                      }
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * 0.3,
              child: videoList.when(
                data: (data) {
                  final url = data[lessonState.lessonIndex].url.split("/").last;
                  controller = ApiVideoPlayerController(
                      videoOptions: VideoOptions(videoId: url));
                  controller.initialize();
                  return ApiVideoPlayer(
                    fit: BoxFit.cover,
                    controller: controller,
                  );
                },
                error: (e, _) {
                  return ELErrorWidget(e: e);
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            videoList.when(data: (data) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  data[lessonState.lessonIndex].title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              );
            }, error: (e, _) {
              return ELErrorWidget(e: e);
            }, loading: () {
              return const Text("");
            }),
            Container(
              width: ScreenUtils.screenWidth(context) * 0.9,
              height: 65,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [],
              ),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, RouteNames.notesView,
                    arguments: id),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.auto_stories,
                      color: Theme.of(context).primaryColor,
                    ),
                    const Text(
                      "Study Notes",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Download",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.quizView,
                    arguments: id);
              },
              child: Container(
                width: ScreenUtils.screenWidth(context) * 0.9,
                height: 65,
                padding: const EdgeInsets.symmetric(horizontal: 32),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.quiz,
                      color: Theme.of(context).primaryColor,
                    ),
                    const Text(
                      "Quiz",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Start",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
