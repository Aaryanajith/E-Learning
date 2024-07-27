import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/home_nav_bar.dart';
import 'package:e_learning_mobile/features/dashboard/application/selected_index_provider.dart';
import 'package:e_learning_mobile/features/leaderboard/presentation/leaderboard_view.dart';
import 'package:e_learning_mobile/features/ai_chat/presentation/ai_chat_view.dart';
import 'package:e_learning_mobile/features/course/presentation/courses_view.dart';
import 'package:e_learning_mobile/features/dashboard/presentation/dashboard.dart';
import 'package:e_learning_mobile/features/live_classes/presentation/live_classes_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class MainPageView extends ConsumerWidget {
  final PageController pageController = PageController(initialPage: 0);

  MainPageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(indexProvider);
    final navigationNotifier = ref.read(indexProvider.notifier);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          Home(),
          Courses(),
          Leaderboard(),
          LiveClasses(),
          AIChatView(),
        ],
        onPageChanged: (index) {
          navigationNotifier.setSelectedIndex(index);
        },
      ),
      bottomNavigationBar: HomeNavBar(
        selectedIndex: selectedIndex,
        controller: pageController,
        onDestinationSelected: (index) {
          navigationNotifier.setSelectedIndex(index);
          pageController.jumpToPage(index);
        },
      ),
    );
  }
}
