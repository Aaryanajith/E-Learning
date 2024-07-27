// ignore_for_file: library_private_types_in_public_api
import 'package:e_learning_mobile/features/quiz/application/quiz_state_notifier.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnswerPopUp extends ConsumerStatefulWidget {
  final bool isCorrect;
  final String descAnswerText;

  const AnswerPopUp({
    Key? key,
    required this.isCorrect,
    required this.descAnswerText,
  }) : super(key: key);

  @override
  _AnswerPopUpState createState() => _AnswerPopUpState();
}

class _AnswerPopUpState extends ConsumerState<AnswerPopUp>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final quizNotifer = ref.watch(quizStateNotifierProvider.notifier);

    final containerColor = widget.isCorrect
        ? ColorsClass.answerPopUpGreen
        : ColorsClass.answerPopUpRed;
    final answerText = widget.isCorrect ? 'Correct' : 'Wrong';
    const rightAnswerText = 'Most Expensive';
    final height = widget.isCorrect
        ? ScreenUtils.screenHeight(context) * 0.36
        : ScreenUtils.screenHeight(context) * 0.43;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      alignment: Alignment.bottomCenter,
      child: AnimatedOpacity(
        opacity: 1,
        duration: const Duration(milliseconds: 300),
        child: Container(
          width: ScreenUtils.screenWidth(context) * 1,
          height: height,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Icon(
                          widget.isCorrect ? Icons.check_circle : Icons.cancel,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        answerText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!widget.isCorrect)
                          const Text(
                            'The right answer is',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        if (!widget.isCorrect)
                          const Text(
                            rightAnswerText,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        const SizedBox(height: 17),
                        Text(
                          widget.descAnswerText,
                          style: const TextStyle(
                            color: ColorsClass.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: BottomButton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.pop(context);
                      quizNotifer.incrementIndex();
                    },
                    backgroundColour: ColorsClass.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
