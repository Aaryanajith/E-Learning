import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'selection_model.dart';

class SelectionNotifier extends StateNotifier<SelectionModel> {
  SelectionNotifier()
      : super(const SelectionModel(
          currentPage: 0,
          isMultiSelect: false,
          selectedOptions: [],
        ));

  void initialize(int currentPage, bool isMultiSelect) {
    state = SelectionModel(
      currentPage: currentPage,
      isMultiSelect: isMultiSelect,
      selectedOptions: [],
    );
  }

  void select(int optionIndex) {
    final isMultiSelect = state.isMultiSelect;
    List<int> updatedOptions;
    if (isMultiSelect) {
      updatedOptions = List<int>.from(state.selectedOptions);
      if (updatedOptions.contains(optionIndex)) {
        updatedOptions.remove(optionIndex);
      } else {
        updatedOptions.add(optionIndex);
      }
    } else {
      updatedOptions = [optionIndex];
    }

    state = state.copyWith(selectedOptions: updatedOptions);
  }

  void resetSelections() {
    state = state.copyWith(selectedOptions: []);
  }

  List<String> getSelectedOptions(List<String> options) {
    return state.selectedOptions.map((index) => options[index]).toList();
  }
}

final selectionProvider =
    StateNotifierProvider<SelectionNotifier, SelectionModel>(
  (ref) => SelectionNotifier(),
);
