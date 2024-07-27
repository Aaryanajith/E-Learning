import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';

part 'preference_notifier.g.dart';

@riverpod
Future<void> setPreferences(Ref ref, Map<int, List<String>> selections) async {
  final client = await ref.read(graphQLClientProvider);


  final String setPreferencesMutation = '''
  mutation preferences{
    setPreferences(preferences : "$selections")
  }''';
  final List<Map<String, dynamic>> selectionsInput = selections.entries.map((entry) {
    return {
      'id': entry.key,
      'values': entry.value,
    };
  }).toList();

  final Map<String, dynamic> variables = {
    'selections': selectionsInput,
  };

  final QueryResult result = await client.mutate(
    MutationOptions(
      document: gql(setPreferencesMutation),
      variables: variables,
      operationName: 'preferences'
    ),
  );
  if (result.hasException) {
    throw Exception('GraphQL Error: ${result.exception.toString()}');
  } 
}