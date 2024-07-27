// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_tab_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentTabModel {
  int get currentTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentTabModelCopyWith<CurrentTabModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTabModelCopyWith<$Res> {
  factory $CurrentTabModelCopyWith(
          CurrentTabModel value, $Res Function(CurrentTabModel) then) =
      _$CurrentTabModelCopyWithImpl<$Res, CurrentTabModel>;
  @useResult
  $Res call({int currentTab});
}

/// @nodoc
class _$CurrentTabModelCopyWithImpl<$Res, $Val extends CurrentTabModel>
    implements $CurrentTabModelCopyWith<$Res> {
  _$CurrentTabModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CurrentTabModelImplCopyWith<$Res>
    implements $CurrentTabModelCopyWith<$Res> {
  factory _$$CurrentTabModelImplCopyWith(_$CurrentTabModelImpl value,
          $Res Function(_$CurrentTabModelImpl) then) =
      __$$CurrentTabModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentTab});
}

/// @nodoc
class __$$CurrentTabModelImplCopyWithImpl<$Res>
    extends _$CurrentTabModelCopyWithImpl<$Res, _$CurrentTabModelImpl>
    implements _$$CurrentTabModelImplCopyWith<$Res> {
  __$$CurrentTabModelImplCopyWithImpl(
      _$CurrentTabModelImpl _value, $Res Function(_$CurrentTabModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTab = null,
  }) {
    return _then(_$CurrentTabModelImpl(
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CurrentTabModelImpl implements _CurrentTabModel {
  const _$CurrentTabModelImpl({this.currentTab = 0});

  @override
  @JsonKey()
  final int currentTab;

  @override
  String toString() {
    return 'CurrentTabModel(currentTab: $currentTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTabModelImpl &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentTabModelImplCopyWith<_$CurrentTabModelImpl> get copyWith =>
      __$$CurrentTabModelImplCopyWithImpl<_$CurrentTabModelImpl>(
          this, _$identity);
}

abstract class _CurrentTabModel implements CurrentTabModel {
  const factory _CurrentTabModel({final int currentTab}) =
      _$CurrentTabModelImpl;

  @override
  int get currentTab;
  @override
  @JsonKey(ignore: true)
  _$$CurrentTabModelImplCopyWith<_$CurrentTabModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
