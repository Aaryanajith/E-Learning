// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SigninStateModel {
  Object? get emailorphone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateModelCopyWith<SigninStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateModelCopyWith<$Res> {
  factory $SigninStateModelCopyWith(
          SigninStateModel value, $Res Function(SigninStateModel) then) =
      _$SigninStateModelCopyWithImpl<$Res, SigninStateModel>;
  @useResult
  $Res call({Object? emailorphone});
}

/// @nodoc
class _$SigninStateModelCopyWithImpl<$Res, $Val extends SigninStateModel>
    implements $SigninStateModelCopyWith<$Res> {
  _$SigninStateModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SigninStateModelImplCopyWith<$Res>
    implements $SigninStateModelCopyWith<$Res> {
  factory _$$SigninStateModelImplCopyWith(_$SigninStateModelImpl value,
          $Res Function(_$SigninStateModelImpl) then) =
      __$$SigninStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? emailorphone});
}

/// @nodoc
class __$$SigninStateModelImplCopyWithImpl<$Res>
    extends _$SigninStateModelCopyWithImpl<$Res, _$SigninStateModelImpl>
    implements _$$SigninStateModelImplCopyWith<$Res> {
  __$$SigninStateModelImplCopyWithImpl(_$SigninStateModelImpl _value,
      $Res Function(_$SigninStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailorphone = freezed,
  }) {
    return _then(_$SigninStateModelImpl(
      emailorphone:
          freezed == emailorphone ? _value.emailorphone : emailorphone,
    ));
  }
}

/// @nodoc

class _$SigninStateModelImpl implements _SigninStateModel {
  const _$SigninStateModelImpl({this.emailorphone = 1});

  @override
  @JsonKey()
  final Object? emailorphone;

  @override
  String toString() {
    return 'SigninStateModel(emailorphone: $emailorphone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateModelImpl &&
            const DeepCollectionEquality()
                .equals(other.emailorphone, emailorphone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailorphone));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateModelImplCopyWith<_$SigninStateModelImpl> get copyWith =>
      __$$SigninStateModelImplCopyWithImpl<_$SigninStateModelImpl>(
          this, _$identity);
}

abstract class _SigninStateModel implements SigninStateModel {
  const factory _SigninStateModel({final Object? emailorphone}) =
      _$SigninStateModelImpl;

  @override
  Object? get emailorphone;
  @override
  @JsonKey(ignore: true)
  _$$SigninStateModelImplCopyWith<_$SigninStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
