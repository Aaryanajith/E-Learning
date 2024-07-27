import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_tab_model.freezed.dart';

@freezed
class CurrentTabModel with _$CurrentTabModel {
  const factory CurrentTabModel({
    @Default(0) int currentTab,
  }) = _CurrentTabModel;
}