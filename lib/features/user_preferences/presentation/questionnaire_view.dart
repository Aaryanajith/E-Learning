import 'package:e_learning_mobile/features/user_preferences/application/selection_provider.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/widgets/user_preferences_widgets/questionnaire_template.dart';
import 'package:e_learning_mobile/features/user_preferences/data/preference_notifier.dart';
import 'package:e_learning_mobile/features/user_preferences/application/current_page_provider.dart';
import 'package:e_learning_mobile/features/user_preferences/application/questionnaire_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:flutter/material.dart';

class UserPrefs extends ConsumerWidget {
  final Map<int, List<String>> selections;

  UserPrefs({Key? key})
      : selections = {},
        super(key: key);

  final PageController _pageController = PageController();

  void _onSelect(WidgetRef ref, int page, int optionIndex, List<String> options) {
    ref.read(selectionProvider.notifier);
    selections[page] = ref.read(selectionProvider.notifier).getSelectedOptions(options);
  }

  void _onNext(BuildContext context, WidgetRef ref, int currentPage) async {
    if (currentPage < 4) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      ref.read(selectionProvider.notifier).resetSelections(); //reset selection
    } else {
      final setPreferencesProvider = SetPreferencesProvider(selections);
      ref.read(setPreferencesProvider.future);
      Navigator.pushNamed(context, RouteNames.curatingView);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageNotifier = ref.read(currentPageProvider.notifier);
    final currentPageState = ref.watch(currentPageProvider);
    final questionsAsyncValue = ref.watch(onboardingQuestionsProvider);
    final selectionNotifier = ref.read(selectionProvider.notifier);

    return Scaffold(
      backgroundColor: ColorsClass.bg,
      body: questionsAsyncValue.when(
        data: (questions) {
          Future.microtask(() {
            selectionNotifier.initialize(
              currentPageState.currentPage,
              questions[currentPageState.currentPage].isMultiSelect,
            );
          });
          return PageView.builder(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (int page) {
              currentPageNotifier.setPage(page);
              selectionNotifier.resetSelections(); 
            },
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];
              return QuestionnaireTemplate(
                title: question.title,
                imagePath: question.imagePath,
                question: question.question,
                options: question.options,
                currentPage: currentPageState.currentPage,
                pageCount: questions.length,
                onNext: () => _onNext(context, ref, currentPageState.currentPage),
                onSelect: (page, selection) => _onSelect(ref, page, selection,question.options),
                isMultiSelect: question.isMultiSelect,
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}