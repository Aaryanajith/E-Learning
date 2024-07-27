import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:e_learning_mobile/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<Link> getCombinedLink() async {
  final token = await storage.read(key: 'JWT');

  final HttpLink authLink = HttpLink('$apiURL/authentication/');
  final coursesLink = HttpLink(
    '$apiURL/courses/',
    defaultHeaders: {'Cookie': 'JWT=$token;'},
  );
  final quizLink = HttpLink(
    '$apiURL/quiz/',
    defaultHeaders: {'Cookie': 'JWT=$token;'},
  );
  final preferencesLink = HttpLink(
    '$apiURL/preference/',
    defaultHeaders: {'Cookie': 'JWT=$token;'},
  );
  final leaderboardLink = HttpLink(
    '$apiURL/leaderboard/',
    defaultHeaders: {'Cookie': 'JWT=$token;'},
  );
  
  return Link.split(
    (request) {
      final operationName = request.operation.operationName;
      return operationName == 'authentication';
    },
    authLink,
    Link.split(
      (request) {
        final operationName = request.operation.operationName;
        return operationName == 'courses';
      },
      coursesLink,
      Link.split(
        (request) {
          final operationName = request.operation.operationName;
          return operationName == 'quiz';
        },
        quizLink,
        Link.split(
          (request) {
            final operationName = request.operation.operationName;
            return operationName == 'preferences';
          },
          preferencesLink,
          Link.split(
            (request) {
              final operationName = request.operation.operationName;
              return operationName == 'getLeaderboard';
            },
            leaderboardLink,
            HttpLink('$apiURL/'),
          ),
        ),
      ),
    ),
  );
}

final graphQLClientProvider = Provider<Future<GraphQLClient>>((ref) async {
  final Link combinedLink = await getCombinedLink();
  return GraphQLClient(
    cache: GraphQLCache(),
    link: combinedLink,
  );
});