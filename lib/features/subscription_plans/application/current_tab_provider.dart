import 'package:e_learning_mobile/features/subscription_plans/application/current_tab_model.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlanDecoration {
  final Color? color;
  final LinearGradient? gradient;

  PlanDecoration({this.color, this.gradient})
      : assert(color != null || gradient != null,
            'Either color or gradient must be provided.');
}

class CurrentTabStateNotifier extends StateNotifier<CurrentTabModel> {
  CurrentTabStateNotifier() : super(const CurrentTabModel(currentTab: 0));

  void setTab(int tab) {
    state = state.copyWith(currentTab: tab);
  }

  PlanDecoration getTabTheme(int tab) {
    Map<int, PlanDecoration> planDecorations = {
      0: PlanDecoration(color: const Color(0XFF01DCD2)),
      1: PlanDecoration(color: const Color(0XFFFFE45F)),
      2: PlanDecoration(gradient: ColorsClass.primaryThemeGradient),
    };
    return planDecorations[tab] ?? PlanDecoration(color: Colors.white);
  }
}

final currentTabProvider =
    StateNotifierProvider<CurrentTabStateNotifier, CurrentTabModel>(
  (ref) => CurrentTabStateNotifier(),
);
