import 'package:e_learning_mobile/constants/constants.dart';
import 'package:e_learning_mobile/features/course/domain/course_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';

part 'courses_provider.g.dart';

@riverpod
Future<List<Course>> getCourses(Ref ref) async {
  final token = await storage.read(key: 'JWT');
  if (token == null) {
    throw Exception('No token found');
  }
  final client = await ref.read(graphQLClientProvider);

  const String videoQuery = '''
  query courses{
    allCourses {
      id
      name
      participants {
        id
        username
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

  final List<dynamic> coursesData = result.data?['allCourses'];
  // Convert coursesData into List<Course>
  List<Course> courses = coursesData.map((courseData) {
    return Course(
      id: courseData['id'],
      name: courseData['name'],
    );
  }).toList();

  return courses;
}
