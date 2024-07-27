import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_state_model.freezed.dart';

@freezed
class LessonState with _$LessonState {
  const factory LessonState({
    @Default(0) lessonIndex,
  }) = _LessonState;
}
