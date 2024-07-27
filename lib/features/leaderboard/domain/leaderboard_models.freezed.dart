// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaderboardData _$LeaderboardDataFromJson(Map<String, dynamic> json) {
  return _LeaderboardData.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardData {
  List<LeaderboardUser> get standings => throw _privateConstructorUsedError;
  int get userRanking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardDataCopyWith<LeaderboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardDataCopyWith<$Res> {
  factory $LeaderboardDataCopyWith(
          LeaderboardData value, $Res Function(LeaderboardData) then) =
      _$LeaderboardDataCopyWithImpl<$Res, LeaderboardData>;
  @useResult
  $Res call({List<LeaderboardUser> standings, int userRanking});
}

/// @nodoc
class _$LeaderboardDataCopyWithImpl<$Res, $Val extends LeaderboardData>
    implements $LeaderboardDataCopyWith<$Res> {
  _$LeaderboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standings = null,
    Object? userRanking = null,
  }) {
    return _then(_value.copyWith(
      standings: null == standings
          ? _value.standings
          : standings // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
      userRanking: null == userRanking
          ? _value.userRanking
          : userRanking // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardDataImplCopyWith<$Res>
    implements $LeaderboardDataCopyWith<$Res> {
  factory _$$LeaderboardDataImplCopyWith(_$LeaderboardDataImpl value,
          $Res Function(_$LeaderboardDataImpl) then) =
      __$$LeaderboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeaderboardUser> standings, int userRanking});
}

/// @nodoc
class __$$LeaderboardDataImplCopyWithImpl<$Res>
    extends _$LeaderboardDataCopyWithImpl<$Res, _$LeaderboardDataImpl>
    implements _$$LeaderboardDataImplCopyWith<$Res> {
  __$$LeaderboardDataImplCopyWithImpl(
      _$LeaderboardDataImpl _value, $Res Function(_$LeaderboardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standings = null,
    Object? userRanking = null,
  }) {
    return _then(_$LeaderboardDataImpl(
      standings: null == standings
          ? _value._standings
          : standings // ignore: cast_nullable_to_non_nullable
              as List<LeaderboardUser>,
      userRanking: null == userRanking
          ? _value.userRanking
          : userRanking // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardDataImpl implements _LeaderboardData {
  _$LeaderboardDataImpl(
      {required final List<LeaderboardUser> standings,
      required this.userRanking})
      : _standings = standings;

  factory _$LeaderboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardDataImplFromJson(json);

  final List<LeaderboardUser> _standings;
  @override
  List<LeaderboardUser> get standings {
    if (_standings is EqualUnmodifiableListView) return _standings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_standings);
  }

  @override
  final int userRanking;

  @override
  String toString() {
    return 'LeaderboardData(standings: $standings, userRanking: $userRanking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardDataImpl &&
            const DeepCollectionEquality()
                .equals(other._standings, _standings) &&
            (identical(other.userRanking, userRanking) ||
                other.userRanking == userRanking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_standings), userRanking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardDataImplCopyWith<_$LeaderboardDataImpl> get copyWith =>
      __$$LeaderboardDataImplCopyWithImpl<_$LeaderboardDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardDataImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardData implements LeaderboardData {
  factory _LeaderboardData(
      {required final List<LeaderboardUser> standings,
      required final int userRanking}) = _$LeaderboardDataImpl;

  factory _LeaderboardData.fromJson(Map<String, dynamic> json) =
      _$LeaderboardDataImpl.fromJson;

  @override
  List<LeaderboardUser> get standings;
  @override
  int get userRanking;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardDataImplCopyWith<_$LeaderboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardUser _$LeaderboardUserFromJson(Map<String, dynamic> json) {
  return _LeaderboardUser.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardUser {
  String get username => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get streak => throw _privateConstructorUsedError;
  double get streakMultiplier => throw _privateConstructorUsedError;
  int get highestStreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardUserCopyWith<LeaderboardUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardUserCopyWith<$Res> {
  factory $LeaderboardUserCopyWith(
          LeaderboardUser value, $Res Function(LeaderboardUser) then) =
      _$LeaderboardUserCopyWithImpl<$Res, LeaderboardUser>;
  @useResult
  $Res call(
      {String username,
      int score,
      int streak,
      double streakMultiplier,
      int highestStreak});
}

/// @nodoc
class _$LeaderboardUserCopyWithImpl<$Res, $Val extends LeaderboardUser>
    implements $LeaderboardUserCopyWith<$Res> {
  _$LeaderboardUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? score = null,
    Object? streak = null,
    Object? streakMultiplier = null,
    Object? highestStreak = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      streakMultiplier: null == streakMultiplier
          ? _value.streakMultiplier
          : streakMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      highestStreak: null == highestStreak
          ? _value.highestStreak
          : highestStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardUserImplCopyWith<$Res>
    implements $LeaderboardUserCopyWith<$Res> {
  factory _$$LeaderboardUserImplCopyWith(_$LeaderboardUserImpl value,
          $Res Function(_$LeaderboardUserImpl) then) =
      __$$LeaderboardUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      int score,
      int streak,
      double streakMultiplier,
      int highestStreak});
}

/// @nodoc
class __$$LeaderboardUserImplCopyWithImpl<$Res>
    extends _$LeaderboardUserCopyWithImpl<$Res, _$LeaderboardUserImpl>
    implements _$$LeaderboardUserImplCopyWith<$Res> {
  __$$LeaderboardUserImplCopyWithImpl(
      _$LeaderboardUserImpl _value, $Res Function(_$LeaderboardUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? score = null,
    Object? streak = null,
    Object? streakMultiplier = null,
    Object? highestStreak = null,
  }) {
    return _then(_$LeaderboardUserImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      streak: null == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int,
      streakMultiplier: null == streakMultiplier
          ? _value.streakMultiplier
          : streakMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      highestStreak: null == highestStreak
          ? _value.highestStreak
          : highestStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardUserImpl implements _LeaderboardUser {
  _$LeaderboardUserImpl(
      {required this.username,
      required this.score,
      required this.streak,
      required this.streakMultiplier,
      required this.highestStreak});

  factory _$LeaderboardUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardUserImplFromJson(json);

  @override
  final String username;
  @override
  final int score;
  @override
  final int streak;
  @override
  final double streakMultiplier;
  @override
  final int highestStreak;

  @override
  String toString() {
    return 'LeaderboardUser(username: $username, score: $score, streak: $streak, streakMultiplier: $streakMultiplier, highestStreak: $highestStreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardUserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.streak, streak) || other.streak == streak) &&
            (identical(other.streakMultiplier, streakMultiplier) ||
                other.streakMultiplier == streakMultiplier) &&
            (identical(other.highestStreak, highestStreak) ||
                other.highestStreak == highestStreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, score, streak, streakMultiplier, highestStreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardUserImplCopyWith<_$LeaderboardUserImpl> get copyWith =>
      __$$LeaderboardUserImplCopyWithImpl<_$LeaderboardUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardUserImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardUser implements LeaderboardUser {
  factory _LeaderboardUser(
      {required final String username,
      required final int score,
      required final int streak,
      required final double streakMultiplier,
      required final int highestStreak}) = _$LeaderboardUserImpl;

  factory _LeaderboardUser.fromJson(Map<String, dynamic> json) =
      _$LeaderboardUserImpl.fromJson;

  @override
  String get username;
  @override
  int get score;
  @override
  int get streak;
  @override
  double get streakMultiplier;
  @override
  int get highestStreak;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardUserImplCopyWith<_$LeaderboardUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRanking _$UserRankingFromJson(Map<String, dynamic> json) {
  return _UserRanking.fromJson(json);
}

/// @nodoc
mixin _$UserRanking {
  int get rank => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRankingCopyWith<UserRanking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRankingCopyWith<$Res> {
  factory $UserRankingCopyWith(
          UserRanking value, $Res Function(UserRanking) then) =
      _$UserRankingCopyWithImpl<$Res, UserRanking>;
  @useResult
  $Res call({int rank, String username, int score});
}

/// @nodoc
class _$UserRankingCopyWithImpl<$Res, $Val extends UserRanking>
    implements $UserRankingCopyWith<$Res> {
  _$UserRankingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? username = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRankingImplCopyWith<$Res>
    implements $UserRankingCopyWith<$Res> {
  factory _$$UserRankingImplCopyWith(
          _$UserRankingImpl value, $Res Function(_$UserRankingImpl) then) =
      __$$UserRankingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rank, String username, int score});
}

/// @nodoc
class __$$UserRankingImplCopyWithImpl<$Res>
    extends _$UserRankingCopyWithImpl<$Res, _$UserRankingImpl>
    implements _$$UserRankingImplCopyWith<$Res> {
  __$$UserRankingImplCopyWithImpl(
      _$UserRankingImpl _value, $Res Function(_$UserRankingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? username = null,
    Object? score = null,
  }) {
    return _then(_$UserRankingImpl(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRankingImpl implements _UserRanking {
  _$UserRankingImpl(
      {required this.rank, required this.username, required this.score});

  factory _$UserRankingImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRankingImplFromJson(json);

  @override
  final int rank;
  @override
  final String username;
  @override
  final int score;

  @override
  String toString() {
    return 'UserRanking(rank: $rank, username: $username, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRankingImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rank, username, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRankingImplCopyWith<_$UserRankingImpl> get copyWith =>
      __$$UserRankingImplCopyWithImpl<_$UserRankingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRankingImplToJson(
      this,
    );
  }
}

abstract class _UserRanking implements UserRanking {
  factory _UserRanking(
      {required final int rank,
      required final String username,
      required final int score}) = _$UserRankingImpl;

  factory _UserRanking.fromJson(Map<String, dynamic> json) =
      _$UserRankingImpl.fromJson;

  @override
  int get rank;
  @override
  String get username;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$UserRankingImplCopyWith<_$UserRankingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
