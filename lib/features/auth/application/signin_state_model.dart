import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state_model.freezed.dart';

@freezed
class SigninStateModel with _$SigninStateModel {
  const factory SigninStateModel({
    @Default(1) final Object? emailorphone,
  }) = _SigninStateModel;
}
