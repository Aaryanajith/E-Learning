// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizState {
  int get quizIndex => throw _privateConstructorUsedError;
  int get selectedValue => throw _privateConstructorUsedError;
  int get quizLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call({int quizIndex, int selectedValue, int quizLength});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizIndex = null,
    Object? selectedValue = null,
    Object? quizLength = null,
  }) {
    return _then(_value.copyWith(
      quizIndex: null == quizIndex
          ? _value.quizIndex
          : quizIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as int,
      quizLength: null == quizLength
          ? _value.quizLength
          : quizLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateImplCopyWith(
          _$QuizStateImpl value, $Res Function(_$QuizStateImpl) then) =
      __$$QuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quizIndex, int selectedValue, int quizLength});
}

/// @nodoc
class __$$QuizStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateImpl>
    implements _$$QuizStateImplCopyWith<$Res> {
  __$$QuizStateImplCopyWithImpl(
      _$QuizStateImpl _value, $Res Function(_$QuizStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizIndex = null,
    Object? selectedValue = null,
    Object? quizLength = null,
  }) {
    return _then(_$QuizStateImpl(
      quizIndex: null == quizIndex
          ? _value.quizIndex
          : quizIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as int,
      quizLength: null == quizLength
          ? _value.quizLength
          : quizLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuizStateImpl implements _QuizState {
  const _$QuizStateImpl(
      {this.quizIndex = 0, this.selectedValue = 1, this.quizLength = 0});

  @override
  @JsonKey()
  final int quizIndex;
  @override
  @JsonKey()
  final int selectedValue;
  @override
  @JsonKey()
  final int quizLength;

  @override
  String toString() {
    return 'QuizState(quizIndex: $quizIndex, selectedValue: $selectedValue, quizLength: $quizLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateImpl &&
            (identical(other.quizIndex, quizIndex) ||
                other.quizIndex == quizIndex) &&
            (identical(other.selectedValue, selectedValue) ||
                other.selectedValue == selectedValue) &&
            (identical(other.quizLength, quizLength) ||
                other.quizLength == quizLength));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, quizIndex, selectedValue, quizLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      __$$QuizStateImplCopyWithImpl<_$QuizStateImpl>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {final int quizIndex,
      final int selectedValue,
      final int quizLength}) = _$QuizStateImpl;

  @override
  int get quizIndex;
  @override
  int get selectedValue;
  @override
  int get quizLength;
  @override
  @JsonKey(ignore: true)
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
