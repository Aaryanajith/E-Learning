import 'package:e_learning_mobile/features/auth/domain/register_model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';

part 'signup_notifier.g.dart';

@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  @override
  AsyncData<Register> build() {
    var user = AsyncData(Register(role: '', username: ''));
    return user;
  }

  Future<bool> register(String username, String password, String phoneNumber,
      String email) async {
    final client = await ref.read(graphQLClientProvider);

    // Construct the GraphQL query
    final String signUpQuery = '''
    mutation authentication{
      register(username: "$username", password: "$password", phoneNumber: "$phoneNumber", email: "$email") {
    user {
      id
      username
      email
      role
        }
      }
    }
  ''';

    final Map<String, dynamic> variables = {
      // 'phone': phone,
      'email': username,
      'password': password,
    };

    final QueryResult result = await client.mutate(
      MutationOptions(
          document: gql(signUpQuery),
          variables: variables,
          operationName: 'authentication'),
    );

    if (!result.hasException && result.data != null) {
      return true;
    } else {
      // If there's an error or no token returned, sign-in failed
      return false;
    }
  }
}
