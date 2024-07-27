import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/account_settings_widgets/setting_widget.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PersonalSetting {
  personalInfo,
  changePassword,
  subscription,
  deleteAccount,
}

class AccountSettings extends ConsumerStatefulWidget {
  const AccountSettings({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AccountSettingsState();
}

class _AccountSettingsState extends ConsumerState<AccountSettings> {
  bool personalInfoTapped = false;
  bool changePasswordTapped = false;
  bool subscriptionTapped = false;
  bool deleteAccountTapped = false;

  void toggleSetting(PersonalSetting setting) {
    setState(() {
      if (setting == PersonalSetting.personalInfo) {
        personalInfoTapped = !personalInfoTapped;
      } else if (setting == PersonalSetting.changePassword) {
        changePasswordTapped = !changePasswordTapped;
      } else if (setting == PersonalSetting.subscription) {
        subscriptionTapped = !subscriptionTapped;
      } else if (setting == PersonalSetting.deleteAccount) {
        deleteAccountTapped = !deleteAccountTapped;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ELearningAppBar(
          title: "Account",
          issplash: false,
          backButton: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenUtils.h3(context)),
            child: Column(
              children: [
                SettingWidget(
                  isOpen: personalInfoTapped,
                  text: "Personal Info",
                  tapfunc: () => toggleSetting(PersonalSetting.personalInfo),
                  type: PersonalSetting.personalInfo,
                ),
                SizedBox(height: ScreenUtils.h2(context)),
                SettingWidget(
                  isOpen: changePasswordTapped,
                  text: "Change Password",
                  tapfunc: () => toggleSetting(PersonalSetting.changePassword),
                  type: PersonalSetting.changePassword,
                ),
                SizedBox(height: ScreenUtils.h2(context)),
                SettingWidget(
                  isOpen: subscriptionTapped,
                  text: "Subscription",
                  tapfunc: () => toggleSetting(PersonalSetting.subscription),
                  type: PersonalSetting.subscription,
                ),
                SizedBox(height: ScreenUtils.h2(context)),
                SettingWidget(
                  isOpen: deleteAccountTapped,
                  text: "Delete Account",
                  tapfunc: () => toggleSetting(PersonalSetting.deleteAccount),
                  type: PersonalSetting.deleteAccount,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
