import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_state_model.freezed.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    @Default(0) int quizIndex,
    @Default(1) int selectedValue,
    @Default(0) int quizLength,
  }) = _QuizState;
}
