// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<QuizOptions> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call({String id, String content, List<QuizOptions> options});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuizOptions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String content, List<QuizOptions> options});
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? options = null,
  }) {
    return _then(_$QuizImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuizOptions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizImpl implements _Quiz {
  _$QuizImpl(
      {required this.id,
      required this.content,
      required final List<QuizOptions> options})
      : _options = options;

  factory _$QuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizImplFromJson(json);

  @override
  final String id;
  @override
  final String content;
  final List<QuizOptions> _options;
  @override
  List<QuizOptions> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'Quiz(id: $id, content: $content, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, content, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizImplToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  factory _Quiz(
      {required final String id,
      required final String content,
      required final List<QuizOptions> options}) = _$QuizImpl;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$QuizImpl.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  List<QuizOptions> get options;
  @override
  @JsonKey(ignore: true)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizOptions _$QuizOptionsFromJson(Map<String, dynamic> json) {
  return _QuizOptions.fromJson(json);
}

/// @nodoc
mixin _$QuizOptions {
  String get id => throw _privateConstructorUsedError;
  String get optionContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizOptionsCopyWith<QuizOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizOptionsCopyWith<$Res> {
  factory $QuizOptionsCopyWith(
          QuizOptions value, $Res Function(QuizOptions) then) =
      _$QuizOptionsCopyWithImpl<$Res, QuizOptions>;
  @useResult
  $Res call({String id, String optionContent});
}

/// @nodoc
class _$QuizOptionsCopyWithImpl<$Res, $Val extends QuizOptions>
    implements $QuizOptionsCopyWith<$Res> {
  _$QuizOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? optionContent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      optionContent: null == optionContent
          ? _value.optionContent
          : optionContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizOptionsImplCopyWith<$Res>
    implements $QuizOptionsCopyWith<$Res> {
  factory _$$QuizOptionsImplCopyWith(
          _$QuizOptionsImpl value, $Res Function(_$QuizOptionsImpl) then) =
      __$$QuizOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String optionContent});
}

/// @nodoc
class __$$QuizOptionsImplCopyWithImpl<$Res>
    extends _$QuizOptionsCopyWithImpl<$Res, _$QuizOptionsImpl>
    implements _$$QuizOptionsImplCopyWith<$Res> {
  __$$QuizOptionsImplCopyWithImpl(
      _$QuizOptionsImpl _value, $Res Function(_$QuizOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? optionContent = null,
  }) {
    return _then(_$QuizOptionsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      optionContent: null == optionContent
          ? _value.optionContent
          : optionContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizOptionsImpl implements _QuizOptions {
  _$QuizOptionsImpl({required this.id, required this.optionContent});

  factory _$QuizOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizOptionsImplFromJson(json);

  @override
  final String id;
  @override
  final String optionContent;

  @override
  String toString() {
    return 'QuizOptions(id: $id, optionContent: $optionContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizOptionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.optionContent, optionContent) ||
                other.optionContent == optionContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, optionContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizOptionsImplCopyWith<_$QuizOptionsImpl> get copyWith =>
      __$$QuizOptionsImplCopyWithImpl<_$QuizOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizOptionsImplToJson(
      this,
    );
  }
}

abstract class _QuizOptions implements QuizOptions {
  factory _QuizOptions(
      {required final String id,
      required final String optionContent}) = _$QuizOptionsImpl;

  factory _QuizOptions.fromJson(Map<String, dynamic> json) =
      _$QuizOptionsImpl.fromJson;

  @override
  String get id;
  @override
  String get optionContent;
  @override
  @JsonKey(ignore: true)
  _$$QuizOptionsImplCopyWith<_$QuizOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
