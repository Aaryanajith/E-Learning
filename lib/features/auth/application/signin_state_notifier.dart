import 'package:e_learning_mobile/features/auth/application/signin_state_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SigninStateNotifier extends StateNotifier<SigninStateModel> {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController phonenumberController;
  final FocusNode usernameFocusNode;
  final FocusNode passwordFocusNode;
  final GlobalKey<FormState> formkey;
  SigninStateNotifier()
      : usernameController = TextEditingController(),
        passwordController = TextEditingController(),
        phonenumberController = TextEditingController(),
        usernameFocusNode = FocusNode(),
        passwordFocusNode = FocusNode(),
        formkey = GlobalKey<FormState>(),
        super(const SigninStateModel());

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  void setToken(int token) {}

  void handleRadioValueChange(Object? value) {
    state = state.copyWith(emailorphone: value);
  }
}

final signinStateProvider =
    StateNotifierProvider<SigninStateNotifier, SigninStateModel>(
  (ref) => SigninStateNotifier(),
);
