// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ar_tab_state_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArTabStateModel {
  int get currentTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArTabStateModelCopyWith<ArTabStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArTabStateModelCopyWith<$Res> {
  factory $ArTabStateModelCopyWith(
          ArTabStateModel value, $Res Function(ArTabStateModel) then) =
      _$ArTabStateModelCopyWithImpl<$Res, ArTabStateModel>;
  @useResult
  $Res call({int currentTab});
}

/// @nodoc
class _$ArTabStateModelCopyWithImpl<$Res, $Val extends ArTabStateModel>
    implements $ArTabStateModelCopyWith<$Res> {
  _$ArTabStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTab = null,
  }) {
    return _then(_value.copyWith(
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArTabStateModelImplCopyWith<$Res>
    implements $ArTabStateModelCopyWith<$Res> {
  factory _$$ArTabStateModelImplCopyWith(_$ArTabStateModelImpl value,
          $Res Function(_$ArTabStateModelImpl) then) =
      __$$ArTabStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentTab});
}

/// @nodoc
class __$$ArTabStateModelImplCopyWithImpl<$Res>
    extends _$ArTabStateModelCopyWithImpl<$Res, _$ArTabStateModelImpl>
    implements _$$ArTabStateModelImplCopyWith<$Res> {
  __$$ArTabStateModelImplCopyWithImpl(
      _$ArTabStateModelImpl _value, $Res Function(_$ArTabStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTab = null,
  }) {
    return _then(_$ArTabStateModelImpl(
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ArTabStateModelImpl implements _ArTabStateModel {
  _$ArTabStateModelImpl({this.currentTab = 0});

  @override
  @JsonKey()
  final int currentTab;

  @override
  String toString() {
    return 'ArTabStateModel(currentTab: $currentTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArTabStateModelImpl &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArTabStateModelImplCopyWith<_$ArTabStateModelImpl> get copyWith =>
      __$$ArTabStateModelImplCopyWithImpl<_$ArTabStateModelImpl>(
          this, _$identity);
}

abstract class _ArTabStateModel implements ArTabStateModel {
  factory _ArTabStateModel({final int currentTab}) = _$ArTabStateModelImpl;

  @override
  int get currentTab;
  @override
  @JsonKey(ignore: true)
  _$$ArTabStateModelImplCopyWith<_$ArTabStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
