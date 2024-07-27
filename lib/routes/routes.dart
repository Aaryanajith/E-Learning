import 'package:e_learning_mobile/features/auth/presentation/account_recovery.dart';
import 'package:e_learning_mobile/features/auth/presentation/otp_view.dart';
import 'package:e_learning_mobile/features/leaderboard/presentation/leaderboard_view.dart';
import 'package:e_learning_mobile/features/curation/presentation/curation_view.dart';
import 'package:e_learning_mobile/features/live_classes/presentation/live_classes_view.dart';
import 'package:e_learning_mobile/features/notes/presentation/notes_view.dart';
import 'package:e_learning_mobile/features/subscription_plans/presentation/choose_plan_screen.dart';
import 'package:e_learning_mobile/features/user_preferences/presentation/curating_view.dart';
import 'package:e_learning_mobile/features/order/presentation/cart_view.dart';
import 'package:e_learning_mobile/features/order/presentation/order_confirm_view.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/features/settings/presentation/account_settings_view.dart';
import 'package:e_learning_mobile/features/ai_chat/presentation/ai_chat_view.dart';
import 'package:e_learning_mobile/features/ai_chat/presentation/ai_splash_view.dart';
import 'package:e_learning_mobile/features/settings/presentation/delete_acc_view_1.dart';
import 'package:e_learning_mobile/features/settings/presentation/delete_acc_view_2.dart';
import 'package:e_learning_mobile/features/settings/presentation/icon_click_view.dart';
import 'package:e_learning_mobile/features/auth/presentation/landing_view.dart';
import 'package:e_learning_mobile/features/course/presentation/lesson_view.dart';
import 'package:e_learning_mobile/features/dashboard/presentation/page_view.dart';
import 'package:e_learning_mobile/features/quiz/presentation/quiz_view.dart';
import 'package:e_learning_mobile/features/course/presentation/sub_course_view.dart';
import 'package:e_learning_mobile/features/user_preferences/presentation/questionnaire_view.dart';
import 'package:e_learning_mobile/features/settings/presentation/user_reg.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_in.dart';
import 'package:e_learning_mobile/features/auth/presentation/sign_up.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.pageView:
        return MaterialPageRoute(builder: (_) => MainPageView());
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case RouteNames.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case RouteNames.userReg:
        return MaterialPageRoute(builder: (_) => const UserReg());
      case RouteNames.userPrefs:
        return MaterialPageRoute(builder: (_) => UserPrefs());
      case RouteNames.curatingView:
        return MaterialPageRoute(builder: (_) => const CuratingView());
      case RouteNames.subCourse:
        final String? id = settings.arguments as String?;
        return MaterialPageRoute(builder: (_) => SubCourse(id: id));
      case RouteNames.lesson:
        final String? id = settings.arguments as String?;
        return MaterialPageRoute(
            builder: (_) => LessonView(
                  id: id,
                ));
      case RouteNames.landingView:
        return MaterialPageRoute(builder: (_) => const LandingView());
      case RouteNames.quizView:
        final String? id = settings.arguments as String?;
        return MaterialPageRoute(builder: (_) => QuizPage(id: id));
      case RouteNames.iconClickView:
        return MaterialPageRoute(builder: (_) => const IconClickView());
      case RouteNames.aIChatView:
        return MaterialPageRoute(builder: (_) => const AIChatView());
      case RouteNames.aISplashView:
        return MaterialPageRoute(builder: (_) => const AISplash());
      case RouteNames.deleteAccountView1:
        return MaterialPageRoute(builder: (_) => const DeleteAccount1());
      case RouteNames.deleteAccountView2:
        return MaterialPageRoute(builder: (_) => const DeleteAccount2());
      case RouteNames.accountSettingsView:
        return MaterialPageRoute(builder: (_) => const AccountSettings());

      case RouteNames.cartView:
        return MaterialPageRoute(builder: (_) => const CartView());
      case RouteNames.notesView:
        final String? id = settings.arguments as String?;
        return MaterialPageRoute(
            builder: (_) => NotesView(
                  id: id,
                ));
      case RouteNames.otpView:
        final String title = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => OtpView(
                  title: title,
                ));
      case RouteNames.accountRecovery:
        return MaterialPageRoute(
          builder: (_) => const AccountSettingsPageView(),
        );
      case RouteNames.orderConfirmView:
        return MaterialPageRoute(builder: (_) => const OrderConfirmView());
      case RouteNames.leaderBoard:
        return MaterialPageRoute(builder: (_) => const Leaderboard());
      case RouteNames.plansView:
        return MaterialPageRoute(builder: (_) => const ChoosePlanScreen());
      case RouteNames.curationChoice:
        return MaterialPageRoute(builder: (_) => const CurationChoiceView());
      case RouteNames.liveClasses:
        return MaterialPageRoute(builder: (_) => const LiveClasses());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(child: Text("No Route Defined")),
            );
          },
        );
    }
  }
}
