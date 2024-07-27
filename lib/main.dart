import 'package:cometchat_calls_uikit/cometchat_calls_uikit.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/routes/routes.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:e_learning_mobile/features/notifications/data/notification_service.dart';
import 'firebase_options.dart';

void main() async {
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();

  AppSettings appSettings = (AppSettingsBuilder()
        ..subscriptionType = CometChatSubscriptionType.allUsers
        ..region = "in"
        ..autoEstablishSocketConnection = true)
      .build();

  CometChat.init("2591297467d473eb", appSettings, onSuccess: (s) {
    debugPrint("Comet Chat initialised $s");
  }, onError: (e) {
    debugPrint("Comet Chat Failed to intialise: $e");
  });

  CallAppSettings callAppSettings = (CallAppSettingBuilder()
        ..appId = "2591297467d473eb"
        ..region = "in"
      //..host = "xxxxxxxxx"
      )
      .build();

  CometChatCalls.init(callAppSettings, onSuccess: (String successMessage) {
    debugPrint(
        "CometChatCalls Initialization completed successfully  $successMessage");
  }, onError: (CometChatCallsException e) {
    debugPrint(
        "CometChatCalls Initialization failed with exception: ${e.message}");
  });

  await Firebase.initializeApp(
    name: "SpeekiAi",
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await NotificationService.initialize();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      const ProviderScope(
        child: MainApp(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
          theme: themedata,
          initialRoute: RouteNames.signIn,
          onGenerateRoute: Routes.generateRoute,
        );
      },
    );
  }
}
