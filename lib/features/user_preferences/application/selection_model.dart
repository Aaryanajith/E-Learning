import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_model.freezed.dart';

@freezed
class SelectionModel with _$SelectionModel {
  const factory SelectionModel({
    required int currentPage,
    required bool isMultiSelect,
    required List<int> selectedOptions,
  }) = _SelectionModel;
}
