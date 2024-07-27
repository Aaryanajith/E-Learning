import 'package:e_learning_mobile/features/course/domain/module_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';

part 'modules_provider.g.dart';

@riverpod
Future<List<Module>> getModules(Ref ref, String? id) async {
  final client = await ref.read(graphQLClientProvider);

  final String videoQuery = '''
  query courses{
    courseById(id: "$id") {
      id
      name
      topics {
        id
        name
        index
      }
    }
  }
  ''';

  final Map<String, dynamic> variables = {};

  final QueryResult result = await client.query(
    QueryOptions(
      document: gql(videoQuery),
      variables: variables,
      operationName: 'courses'
    ),
  );

  if (result.hasException) {
    throw Exception('GraphQL Error: ${result.exception.toString()}');
  }

  final List<dynamic> modulesData = result.data?['courseById']['topics'];

  List<Module> modules = modulesData.map((moduledata) {
    return Module(id: moduledata['id'], name: moduledata['name']);
  }).toList();

  return modules;
}
