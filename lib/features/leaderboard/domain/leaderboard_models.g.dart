// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderboardDataImpl _$$LeaderboardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardDataImpl(
      standings: (json['standings'] as List<dynamic>)
          .map((e) => LeaderboardUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      userRanking: json['userRanking'] as int,
    );

Map<String, dynamic> _$$LeaderboardDataImplToJson(
        _$LeaderboardDataImpl instance) =>
    <String, dynamic>{
      'standings': instance.standings,
      'userRanking': instance.userRanking,
    };

_$LeaderboardUserImpl _$$LeaderboardUserImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardUserImpl(
      username: json['username'] as String,
      score: json['score'] as int,
      streak: json['streak'] as int,
      streakMultiplier: (json['streakMultiplier'] as num).toDouble(),
      highestStreak: json['highestStreak'] as int,
    );

Map<String, dynamic> _$$LeaderboardUserImplToJson(
        _$LeaderboardUserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'score': instance.score,
      'streak': instance.streak,
      'streakMultiplier': instance.streakMultiplier,
      'highestStreak': instance.highestStreak,
    };

_$UserRankingImpl _$$UserRankingImplFromJson(Map<String, dynamic> json) =>
    _$UserRankingImpl(
      rank: json['rank'] as int,
      username: json['username'] as String,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$UserRankingImplToJson(_$UserRankingImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'username': instance.username,
      'score': instance.score,
    };
