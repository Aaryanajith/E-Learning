import 'package:e_learning_mobile/features/user_preferences/application/current_page_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentPageStateNotifier extends StateNotifier<CurrentPageModel> {
  CurrentPageStateNotifier()
      : super(const CurrentPageModel(currentPage: 0));

  void setPage(int page) {
      state = state.copyWith(currentPage: page);
  }
}

final currentPageProvider =
    StateNotifierProvider<CurrentPageStateNotifier, CurrentPageModel>(
  (ref) => CurrentPageStateNotifier(),
);