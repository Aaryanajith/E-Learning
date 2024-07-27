import 'package:e_learning_mobile/features/course/application/lesson_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lesson_state_notifier.g.dart';

@riverpod
class LessonStateNotifier extends _$LessonStateNotifier {
  @override
  LessonState build() {
    return const LessonState();
  }

  void setLessonIndex(int index) {
    state = state.copyWith(lessonIndex: index);
  }
}
