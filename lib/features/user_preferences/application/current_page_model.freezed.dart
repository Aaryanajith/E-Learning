// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentPageModel {
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentPageModelCopyWith<CurrentPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentPageModelCopyWith<$Res> {
  factory $CurrentPageModelCopyWith(
          CurrentPageModel value, $Res Function(CurrentPageModel) then) =
      _$CurrentPageModelCopyWithImpl<$Res, CurrentPageModel>;
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class _$CurrentPageModelCopyWithImpl<$Res, $Val extends CurrentPageModel>
    implements $CurrentPageModelCopyWith<$Res> {
  _$CurrentPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentPageModelImplCopyWith<$Res>
    implements $CurrentPageModelCopyWith<$Res> {
  factory _$$CurrentPageModelImplCopyWith(_$CurrentPageModelImpl value,
          $Res Function(_$CurrentPageModelImpl) then) =
      __$$CurrentPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$CurrentPageModelImplCopyWithImpl<$Res>
    extends _$CurrentPageModelCopyWithImpl<$Res, _$CurrentPageModelImpl>
    implements _$$CurrentPageModelImplCopyWith<$Res> {
  __$$CurrentPageModelImplCopyWithImpl(_$CurrentPageModelImpl _value,
      $Res Function(_$CurrentPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$CurrentPageModelImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CurrentPageModelImpl implements _CurrentPageModel {
  const _$CurrentPageModelImpl({this.currentPage = 0});

  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'CurrentPageModel(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentPageModelImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentPageModelImplCopyWith<_$CurrentPageModelImpl> get copyWith =>
      __$$CurrentPageModelImplCopyWithImpl<_$CurrentPageModelImpl>(
          this, _$identity);
}

abstract class _CurrentPageModel implements CurrentPageModel {
  const factory _CurrentPageModel({final int currentPage}) =
      _$CurrentPageModelImpl;

  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$CurrentPageModelImplCopyWith<_$CurrentPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
