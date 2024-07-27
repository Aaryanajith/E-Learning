import 'package:e_learning_mobile/features/notes/domain/notes_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';

part 'notes_provider.g.dart';

@riverpod
Future<Notes> getNotes(Ref ref, String id) async {
  final client = await ref.read(graphQLClientProvider);

  final String notesQuery = '''
  query courses{
    noteById(id: "$id") {
      id
      file
    }
  }
  ''';
  final Map<String, dynamic> variables = {};

  final QueryResult result = await client.query(
    QueryOptions(
      document: gql(notesQuery),
      variables: variables,
      operationName: 'courses'
    ),
  );

  if (result.hasException) {
    throw Exception('GraphQL Error: ${result.exception.toString()}');
  }

  final Map<String, dynamic>? notesData = result.data?['noteById'];

  if (notesData == null) {
    throw Exception('Note with id $id not found.');
  }

  return Notes.fromJson(notesData);
}
