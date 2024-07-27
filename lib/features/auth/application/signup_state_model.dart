import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state_model.freezed.dart';

@freezed
class SignupStateModel with _$SignupStateModel {
  const factory SignupStateModel({
    @Default(1) final Object? emailorphone,
  }) = _SignupStateModel;
}
