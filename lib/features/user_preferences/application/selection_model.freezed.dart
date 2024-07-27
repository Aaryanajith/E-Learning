// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectionModel {
  int get currentPage => throw _privateConstructorUsedError;
  bool get isMultiSelect => throw _privateConstructorUsedError;
  List<int> get selectedOptions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectionModelCopyWith<SelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionModelCopyWith<$Res> {
  factory $SelectionModelCopyWith(
          SelectionModel value, $Res Function(SelectionModel) then) =
      _$SelectionModelCopyWithImpl<$Res, SelectionModel>;
  @useResult
  $Res call({int currentPage, bool isMultiSelect, List<int> selectedOptions});
}

/// @nodoc
class _$SelectionModelCopyWithImpl<$Res, $Val extends SelectionModel>
    implements $SelectionModelCopyWith<$Res> {
  _$SelectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? isMultiSelect = null,
    Object? selectedOptions = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isMultiSelect: null == isMultiSelect
          ? _value.isMultiSelect
          : isMultiSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOptions: null == selectedOptions
          ? _value.selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectionModelImplCopyWith<$Res>
    implements $SelectionModelCopyWith<$Res> {
  factory _$$SelectionModelImplCopyWith(_$SelectionModelImpl value,
          $Res Function(_$SelectionModelImpl) then) =
      __$$SelectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, bool isMultiSelect, List<int> selectedOptions});
}

/// @nodoc
class __$$SelectionModelImplCopyWithImpl<$Res>
    extends _$SelectionModelCopyWithImpl<$Res, _$SelectionModelImpl>
    implements _$$SelectionModelImplCopyWith<$Res> {
  __$$SelectionModelImplCopyWithImpl(
      _$SelectionModelImpl _value, $Res Function(_$SelectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? isMultiSelect = null,
    Object? selectedOptions = null,
  }) {
    return _then(_$SelectionModelImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isMultiSelect: null == isMultiSelect
          ? _value.isMultiSelect
          : isMultiSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOptions: null == selectedOptions
          ? _value._selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SelectionModelImpl implements _SelectionModel {
  const _$SelectionModelImpl(
      {required this.currentPage,
      required this.isMultiSelect,
      required final List<int> selectedOptions})
      : _selectedOptions = selectedOptions;

  @override
  final int currentPage;
  @override
  final bool isMultiSelect;
  final List<int> _selectedOptions;
  @override
  List<int> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableListView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOptions);
  }

  @override
  String toString() {
    return 'SelectionModel(currentPage: $currentPage, isMultiSelect: $isMultiSelect, selectedOptions: $selectedOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectionModelImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isMultiSelect, isMultiSelect) ||
                other.isMultiSelect == isMultiSelect) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptions, _selectedOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, isMultiSelect,
      const DeepCollectionEquality().hash(_selectedOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectionModelImplCopyWith<_$SelectionModelImpl> get copyWith =>
      __$$SelectionModelImplCopyWithImpl<_$SelectionModelImpl>(
          this, _$identity);
}

abstract class _SelectionModel implements SelectionModel {
  const factory _SelectionModel(
      {required final int currentPage,
      required final bool isMultiSelect,
      required final List<int> selectedOptions}) = _$SelectionModelImpl;

  @override
  int get currentPage;
  @override
  bool get isMultiSelect;
  @override
  List<int> get selectedOptions;
  @override
  @JsonKey(ignore: true)
  _$$SelectionModelImplCopyWith<_$SelectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
