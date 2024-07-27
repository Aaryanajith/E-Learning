import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ar_tab_state_provider.freezed.dart';

@freezed
class ArTabStateModel with _$ArTabStateModel {
  factory ArTabStateModel({
    @Default(0) int currentTab,
  }) = _ArTabStateModel;
}

class ArCurrentTabStateNotifier extends StateNotifier<ArTabStateModel> {
  ArCurrentTabStateNotifier() : super(ArTabStateModel(currentTab: 0));

  void setTab(int tab) {
    state = state.copyWith(currentTab: tab);
  }
}

final arCurrentTabProvider =
    StateNotifierProvider<ArCurrentTabStateNotifier, ArTabStateModel>(
  (ref) => ArCurrentTabStateNotifier(),
);
