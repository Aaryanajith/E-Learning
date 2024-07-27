// ignore_for_file: camel_case_types

import 'package:cometchat_sdk/cometchat_sdk.dart';
import 'package:e_learning_mobile/constants/constants.dart';
import 'package:e_learning_mobile/features/auth/domain/user_model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:e_learning_mobile/resources/graphql_client.dart';
import 'package:graphql/client.dart';
part 'login_notifier.g.dart';

@riverpod
class loginNotifier extends _$loginNotifier {
  @override
  AsyncData<AppUser> build() {
    var user = AsyncData(AppUser(token: '', username: ''));
    return user;
  }

  Future<bool> getSignInToken(String username, String password) async {
    final client = await ref.read(graphQLClientProvider);
    final String signInQuery = '''
    mutation authentication{
      loginUser(username: "$username", password: "$password") {
        token
        payload
        refreshExpiresIn
      }
    } 
  ''';

    final Map<String, dynamic> variables = {
      'username': username,
      'password': password,
    };
    final QueryResult result = await client.mutate(
      MutationOptions(
          document: gql(signInQuery),
          variables: variables,
          operationName: 'authentication'),
    );
    bool checkcomet = false;
    await CometChat.login(
        "superhero2", // pass username next time
        cometChatAuth, onSuccess: (s) {
      checkcomet = true;
    }, onError: (e) {});

    if (!result.hasException && result.data != null && checkcomet) {
      final token = result.data!["loginUser"]["token"];

      await storage.write(key: "JWT", value: token);

      // print(token)
      return true;
    } else {
      // If there's an error or no token returned, sign-in failed
      return false;
    }
  }
}
