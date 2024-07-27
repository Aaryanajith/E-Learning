import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_models.freezed.dart';
part 'leaderboard_models.g.dart';

@freezed
class LeaderboardData with _$LeaderboardData {
  factory LeaderboardData({
    required List<LeaderboardUser> standings,
    required int userRanking,
  }) = _LeaderboardData;

  factory LeaderboardData.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardDataFromJson(json);
}

@freezed
class LeaderboardUser with _$LeaderboardUser {
  factory LeaderboardUser({
    required String username,
    required int score,
    required int streak,
    required double streakMultiplier,
    required int highestStreak,
  }) = _LeaderboardUser;

  factory LeaderboardUser.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardUserFromJson(json);
}

@freezed
class UserRanking with _$UserRanking {
  factory UserRanking({
    required int rank,
    required String username,
    required int score,
  }) = _UserRanking;

  factory UserRanking.fromJson(Map<String, dynamic> json) =>
      _$UserRankingFromJson(json);
}