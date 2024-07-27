// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupStateModel {
  Object? get emailorphone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateModelCopyWith<SignupStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateModelCopyWith<$Res> {
  factory $SignupStateModelCopyWith(
          SignupStateModel value, $Res Function(SignupStateModel) then) =
      _$SignupStateModelCopyWithImpl<$Res, SignupStateModel>;
  @useResult
  $Res call({Object? emailorphone});
}

/// @nodoc
class _$SignupStateModelCopyWithImpl<$Res, $Val extends SignupStateModel>
    implements $SignupStateModelCopyWith<$Res> {
  _$SignupStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailorphone = freezed,
  }) {
    return _then(_value.copyWith(
      emailorphone:
          freezed == emailorphone ? _value.emailorphone : emailorphone,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupStateModelImplCopyWith<$Res>
    implements $SignupStateModelCopyWith<$Res> {
  factory _$$SignupStateModelImplCopyWith(_$SignupStateModelImpl value,
          $Res Function(_$SignupStateModelImpl) then) =
      __$$SignupStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? emailorphone});
}

/// @nodoc
class __$$SignupStateModelImplCopyWithImpl<$Res>
    extends _$SignupStateModelCopyWithImpl<$Res, _$SignupStateModelImpl>
    implements _$$SignupStateModelImplCopyWith<$Res> {
  __$$SignupStateModelImplCopyWithImpl(_$SignupStateModelImpl _value,
      $Res Function(_$SignupStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailorphone = freezed,
  }) {
    return _then(_$SignupStateModelImpl(
      emailorphone:
          freezed == emailorphone ? _value.emailorphone : emailorphone,
    ));
  }
}

/// @nodoc

class _$SignupStateModelImpl implements _SignupStateModel {
  const _$SignupStateModelImpl({this.emailorphone = 1});

  @override
  @JsonKey()
  final Object? emailorphone;

  @override
  String toString() {
    return 'SignupStateModel(emailorphone: $emailorphone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateModelImpl &&
            const DeepCollectionEquality()
                .equals(other.emailorphone, emailorphone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailorphone));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateModelImplCopyWith<_$SignupStateModelImpl> get copyWith =>
      __$$SignupStateModelImplCopyWithImpl<_$SignupStateModelImpl>(
          this, _$identity);
}

abstract class _SignupStateModel implements SignupStateModel {
  const factory _SignupStateModel({final Object? emailorphone}) =
      _$SignupStateModelImpl;

  @override
  Object? get emailorphone;
  @override
  @JsonKey(ignore: true)
  _$$SignupStateModelImplCopyWith<_$SignupStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
