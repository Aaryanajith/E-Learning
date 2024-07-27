import 'package:e_learning_mobile/features/auth/application/signup_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupStateNotifier extends StateNotifier<SignupStateModel> {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmpasswordController;
  final TextEditingController emailController;
  final TextEditingController phonenumberController;
  final FocusNode usernameFocusNode;
  final FocusNode passwordFocusNode;
  final FocusNode phonenumberFocusNode;
  final FocusNode emailFocusNode;
  final FocusNode confirmpasswordFocusNode;

  final GlobalKey<FormState> formkey1;
  final GlobalKey<FormState> formkey2;

  SignupStateNotifier()
      : usernameController = TextEditingController(),
        passwordController = TextEditingController(),
        emailController = TextEditingController(),
        phonenumberController = TextEditingController(),
        confirmpasswordController = TextEditingController(),
        usernameFocusNode = FocusNode(),
        passwordFocusNode = FocusNode(),
        confirmpasswordFocusNode = FocusNode(),
        phonenumberFocusNode = FocusNode(),
        emailFocusNode = FocusNode(),
        formkey1 = GlobalKey<FormState>(),
        formkey2 = GlobalKey<FormState>(),
        super(const SignupStateModel());

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void handleRadioValueChange(Object? value) {
    state = state.copyWith(emailorphone: value);
  }
}

final signupStateProvider =
    StateNotifierProvider<SignupStateNotifier, SignupStateModel>(
  (ref) => SignupStateNotifier(),
);
