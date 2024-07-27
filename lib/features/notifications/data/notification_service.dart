import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:e_learning_mobile/constants/constants.dart';

class NotificationService {
  static Future<bool> registerDevice(String token) async {
    final String? jwtToken = await storage.read(key: "JWT");
    // User must be signed in to register device
    if (jwtToken == null) return false;

    final HttpLink notifLink = HttpLink(
      '$apiURL/notifications/',
      defaultHeaders: {'Cookie': 'JWT=$jwtToken;'},
    );

    final client = GraphQLClient(link: notifLink, cache: GraphQLCache());

    final String registerMutation = '''
    mutation {
      registerDevice(registrationId: "$token"){
        message
      }
    }
    ''';

    final QueryResult result = await client.mutate(
      MutationOptions(
        document: gql(registerMutation),
      ),
    );

    if (!result.hasException && result.data != null) {
      return true;
    } else {
      return false;
    }
  }

  static Future<void> checkToken(String fcmToken) async {
    final localToken = await storage.read(key: 'FCM');

    // If token is not stored locally or has changed, register device
    if (localToken == null || localToken != fcmToken) {
      registerDevice(fcmToken).then((success) {
        if (success) storage.write(key: "FCM", value: fcmToken);
      });
    }
  }

  static Future<void> initialize() async {
    await FirebaseMessaging.instance.requestPermission();
    FirebaseMessaging.instance.getToken().then((value) async {
      if (value != null) {
        await checkToken(value);
      }
    });
  }
}
