import 'package:e_learning_mobile/features/leaderboard/domain/leaderboard_models.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'leaderboard_provider.g.dart';

@riverpod
Future<LeaderboardData> getLeaderboard(Ref ref, String startDate) async {
  final client = await ref.read(graphQLClientProvider);

  const String leaderboardQuery = '''
  query getLeaderboard(\$startDate: Date!) {
    standings(startDate: \$startDate) {
      username
      score
      streak
      streakMultiplier
      highestStreak
    }
    userRanking(startDate: \$startDate)
  }
  ''';

  final Map<String, dynamic> variables = {
    'startDate': startDate,
  };

  final QueryResult result = await client.query(
    QueryOptions(
      document: gql(leaderboardQuery),
      variables: variables,
      operationName: 'getLeaderboard', // Correct operation name here
    ),
  );

  if (result.hasException) {
    debugPrint(result.exception.toString());
    throw Exception('GraphQL Error: ${result.exception.toString()}');
  }

  debugPrint(result.toString());

  final List<LeaderboardUser> standings = (result.data?['standings'] as List)
      .map((item) => LeaderboardUser.fromJson(item))
      .toList();

  final int userRanking = result.data?['userRanking'] as int;

  return LeaderboardData(standings: standings, userRanking: userRanking);
}
