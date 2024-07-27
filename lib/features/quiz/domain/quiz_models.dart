import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_models.freezed.dart';
part 'quiz_models.g.dart';

@freezed
class Quiz with _$Quiz {
  factory Quiz({
    required String id,
    required String content,
    required List<QuizOptions> options,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}

@freezed
class QuizOptions with _$QuizOptions {
  factory QuizOptions({
    required String id,
    required String optionContent,
  }) = _QuizOptions;

  factory QuizOptions.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionsFromJson(json);
}
