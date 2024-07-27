import 'package:e_learning_mobile/features/course/domain/video_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';

part 'video_provider.g.dart';

@riverpod
Future<List<Video>> getVideos(Ref ref, String id) async {
  final client = await ref.read(graphQLClientProvider);

  final String videoQuery = '''
  query courses{
    topicById(id: "$id") {
      id
      name
      videos {
        id
        title
        url
      }
    }
  }
  ''';

  final Map<String, dynamic> variables = {};

  final QueryResult result = await client.mutate(
    MutationOptions(
      document: gql(videoQuery),
      variables: variables,
      operationName: 'courses'
    ),
  );

  if (result.hasException) {
    throw Exception('GraphQL Error: ${result.exception.toString()}');
  }

  final List<dynamic> videosData = result.data?['topicById']['videos'];

  List<Video> videos = videosData.map((videodata) {
    return Video(
        id: videodata['id'], title: videodata['title'], url: videodata['url']);
  }).toList();

  return videos;
}
