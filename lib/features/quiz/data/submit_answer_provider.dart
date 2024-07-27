import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';

part 'submit_answer_provider.g.dart';

@riverpod
class SubmitAnswerNotifer extends _$SubmitAnswerNotifer {
  @override
  build() {
    return null;
  }

  Future<bool> submitAnswer(String optionId, String resultId) async {
    // Initialize the GraphQL client
    final client = await ref.read(graphQLClientProvider);

    // Construct the GraphQL query
    const String submitanswerQuery = '''
      mutation quiz(\$optionId: ID!, \$resultId: ID!) {
        submitAnswer(optionId: \$optionId, resultId: \$resultId) {
        result {
          score
          percentage
        }
        isCorrect
        correctOption {
          id
          optionContent
        }
      }
    }
  ''';

    final Map<String, dynamic> variables = {
      // 'phone': phone,
      'optionId': optionId,
      'resultId': resultId,
    };
    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(submitanswerQuery),
        variables: variables,
        operationName: 'quiz'
      ),
    );
    if (!result.hasException &&
        result.data != null &&
        result.data?["submitAnswer"]["isCorrect"] == true) {
      return true;
    } else {
      // If there's an error or no token returned, sign-in failed
      return false;
    }
  }
}
