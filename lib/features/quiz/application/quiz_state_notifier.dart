import 'package:e_learning_mobile/features/quiz/application/quiz_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_state_notifier.g.dart';

@riverpod
class QuizStateNotifier extends _$QuizStateNotifier {
  @override
  QuizState build() {
    return const QuizState();
  }

  void incrementIndex() {
    state = state.copyWith(quizIndex: state.quizIndex + 1);
  }

  void selectOption(int? value) {
    state = state.copyWith(selectedValue: value ?? 1);
  }
}
