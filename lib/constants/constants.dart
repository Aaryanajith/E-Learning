import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String apiURL =
    String.fromEnvironment("API_URL", defaultValue: "http://10.0.2.2:8000");
const String fireBaseKey = String.fromEnvironment("FB_KEY");
const String fireBaseAppId = String.fromEnvironment("FB_APP_ID");
const String cometChatAuth = String.fromEnvironment("COMET_AUTH");
const storage = FlutterSecureStorage();
