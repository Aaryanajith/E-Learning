import 'package:e_learning_mobile/features/quiz/domain/quiz_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';

part 'quiz_provider.g.dart';

@riverpod
Future<List<Quiz>> getQuizes(Ref ref, String id) async {
  final client = await ref.read(graphQLClientProvider);

  final String quizQuery = '''
  query quiz{
    quizById(id: $id) {
      id
      name
      questions {
        id
        content
        options {
          id
          optionContent
        }
      }
    }
  }
  ''';
  final Map<String, dynamic> variables = {};

  final QueryResult result = await client.query(
    QueryOptions(
      document: gql(quizQuery),
      variables: variables,
      operationName: 'quiz'
    ),
  );
  if (result.hasException) {
    throw Exception('GraphQL Error: ${result.exception.toString()}');
  }

  final List<Quiz> quizData = (result.data?['quizById']['questions'] as List)
      .map((item) => Quiz.fromJson(item))
      .toList();
  return quizData;
}
