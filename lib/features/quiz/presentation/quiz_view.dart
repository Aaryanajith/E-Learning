// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api

import 'package:e_learning_mobile/features/quiz/application/quiz_state_notifier.dart';
import 'package:e_learning_mobile/features/quiz/data/quiz_provider.dart';
import 'package:e_learning_mobile/features/quiz/data/submit_answer_provider.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/error_widget.dart';
import 'package:e_learning_mobile/widgets/quiz_widgets/answer_button.dart';
import 'package:e_learning_mobile/widgets/quiz_widgets/answer_popup.dart';
import 'package:e_learning_mobile/widgets/quiz_widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuizPage extends ConsumerWidget {
  final String? id;
  const QuizPage({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizStateNotifierProvider);
    final quizStateNotifier = ref.read(quizStateNotifierProvider.notifier);
    final quizData = ref.watch(getQuizesProvider(id ?? ""));

    return Scaffold(
      backgroundColor: ColorsClass.white,
      appBar: const ELearningAppBar(
          title: "Quiz",
          issplash: false,
          backButton: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: ScreenUtils.screenWidth(context) * 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Question 1/1',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    quizData.when(
                        data: (data) {
                          return Flexible(
                            child: SizedBox(
                              child: Text(
                                data[quizState.quizIndex].content,
                                overflow: TextOverflow.visible,
                                style: const TextStyle(
                                  color: ColorsClass.black,
                                  fontSize: 22,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          );
                        },
                        error: (e, _) {
                          return ELErrorWidget(e: e);
                        },
                        loading: () => const Text("")),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: quizData.when(
                          data: (data) {
                            final options = data[quizState.quizIndex].options;
                            return Column(
                              children: options
                                  .map((e) => AnswerRadioButton(
                                      value: options.indexOf(e) + 1,
                                      groupValue: quizState.selectedValue,
                                      onChanged: (value) {
                                        quizStateNotifier.selectOption(value);
                                      },
                                      text: e.optionContent))
                                  .toList(),
                            );
                          },
                          error: (e, _) {
                            return ELErrorWidget(e: e);
                          },
                          loading: () => const Text("")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: NextButton(
                          text1: 'Check',
                          text2: '',
                          onPressed: () async {
                            final check = await ref
                                .read(submitAnswerNotiferProvider.notifier)
                                .submitAnswer(
                                    quizState.selectedValue.toString(), "1");
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => SingleChildScrollView(
                                child: Container(
                                  padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom,
                                  ),
                                  child: AnswerPopUp(
                                    isCorrect: check,
                                    descAnswerText:
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim  veniam, quis nostrud.',
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
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
