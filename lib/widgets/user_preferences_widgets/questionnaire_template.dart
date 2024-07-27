import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:e_learning_mobile/widgets/user_preferences_widgets/page_indicator.dart';
import 'package:e_learning_mobile/widgets/user_preferences_widgets/radio_button_1.dart';
import 'package:e_learning_mobile/features/user_preferences/application/selection_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionnaireTemplate extends ConsumerWidget {
  final String title;
  final String imagePath;
  final String question;
  final List<String> options;
  final int currentPage;
  final int pageCount;
  final Function(int, int) onSelect;
  final VoidCallback onNext;
  final bool isMultiSelect;

  const QuestionnaireTemplate({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.question,
    required this.options,
    required this.currentPage,
    required this.pageCount,
    required this.onSelect,
    required this.onNext,
    this.isMultiSelect = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectionState = ref.watch(selectionProvider);
    final selectionNotifier = ref.read(selectionProvider.notifier);

    void onChanged(int index) {
      selectionNotifier.select(index);
      onSelect(currentPage, index);
    }

    return Scaffold(
      backgroundColor: ColorsClass.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  title,
                  style: TextStylesClass.h3,
                ),
              ),
              SizedBox(height: ScreenUtils.h3(context)),
              Container(
                height: 0.2.sh,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: ScreenUtils.h3(context)),
              PageIndicator(currentPage: currentPage, pageCount: pageCount),
              SizedBox(height: ScreenUtils.h3(context)),
              Text(
                question,
                textAlign: TextAlign.center,
                style: TextStylesClass.h6,
              ),
              SizedBox(height: ScreenUtils.h1(context)),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: ScreenUtils.h1(context)),
                      child: RadioButton(
                        text: options[index],
                        index: index,
                        isSelected: selectionState.selectedOptions.contains(index),
                        isMultiSelect: isMultiSelect,
                        onChanged: (selected) {
                          onChanged(index);
                        },
                      ),
                    );
                  },
                ),
              ),
              Expanded(child: Container()),
              if (selectionState.selectedOptions.isNotEmpty)
                BottomButton(
                  text: currentPage == pageCount - 1 ? 'Finish' : 'Next',
                  onPressed: onNext,
                  width: 0.9.sw,
                  borderRadius: 12,
                  useGradient: false,
                  height:60
                ),
              SizedBox(height: ScreenUtils.h1(context)),
            ],
          ),
        ),
      ),
    );
  }
}