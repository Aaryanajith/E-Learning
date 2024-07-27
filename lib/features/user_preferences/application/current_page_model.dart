import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_page_model.freezed.dart';

@freezed
class CurrentPageModel with _$CurrentPageModel {
  const factory CurrentPageModel({
    @Default(0) int currentPage,
  }) = _CurrentPageModel;
}