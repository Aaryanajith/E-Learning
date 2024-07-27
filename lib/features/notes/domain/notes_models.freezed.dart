// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Notes _$NotesFromJson(Map<String, dynamic> json) {
  return _Notes.fromJson(json);
}

/// @nodoc
mixin _$Notes {
  String get id => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesCopyWith<Notes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesCopyWith<$Res> {
  factory $NotesCopyWith(Notes value, $Res Function(Notes) then) =
      _$NotesCopyWithImpl<$Res, Notes>;
  @useResult
  $Res call({String id, String file});
}

/// @nodoc
class _$NotesCopyWithImpl<$Res, $Val extends Notes>
    implements $NotesCopyWith<$Res> {
  _$NotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesImplCopyWith<$Res> implements $NotesCopyWith<$Res> {
  factory _$$NotesImplCopyWith(
          _$NotesImpl value, $Res Function(_$NotesImpl) then) =
      __$$NotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String file});
}

/// @nodoc
class __$$NotesImplCopyWithImpl<$Res>
    extends _$NotesCopyWithImpl<$Res, _$NotesImpl>
    implements _$$NotesImplCopyWith<$Res> {
  __$$NotesImplCopyWithImpl(
      _$NotesImpl _value, $Res Function(_$NotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? file = null,
  }) {
    return _then(_$NotesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotesImpl implements _Notes {
  _$NotesImpl({required this.id, required this.file});

  factory _$NotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotesImplFromJson(json);

  @override
  final String id;
  @override
  final String file;

  @override
  String toString() {
    return 'Notes(id: $id, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      __$$NotesImplCopyWithImpl<_$NotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotesImplToJson(
      this,
    );
  }
}

abstract class _Notes implements Notes {
  factory _Notes({required final String id, required final String file}) =
      _$NotesImpl;

  factory _Notes.fromJson(Map<String, dynamic> json) = _$NotesImpl.fromJson;

  @override
  String get id;
  @override
  String get file;
  @override
  @JsonKey(ignore: true)
  _$$NotesImplCopyWith<_$NotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
