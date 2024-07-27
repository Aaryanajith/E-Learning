import 'package:e_learning_mobile/features/settings/presentation/account_settings_view.dart';
import 'package:e_learning_mobile/widgets/account_settings_widgets/change_password_widget.dart';
import 'package:e_learning_mobile/widgets/account_settings_widgets/delete_account_widget.dart';
import 'package:e_learning_mobile/widgets/account_settings_widgets/personal_info_widget.dart';
import 'package:e_learning_mobile/widgets/account_settings_widgets/subscription_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingWidget extends ConsumerWidget {
  final bool isOpen;
  final Function tapfunc;
  final String text;
  final PersonalSetting type;

  const SettingWidget({
    super.key,
    required this.isOpen,
    required this.text,
    required this.tapfunc,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        tapfunc();
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFCAC4D0), width: 1.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: isOpen ? _buildAdditionalContent(type) : Container(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdditionalContent(PersonalSetting type) {
    switch (type) {
      case PersonalSetting.changePassword:
        return const ChangePassword();
      case PersonalSetting.personalInfo:
        return const PersonalInfo();
      case PersonalSetting.subscription:
        return const Subscription();
      case PersonalSetting.deleteAccount:
        return const DeleteAccount();
      default:
        return Container(); // Return an empty Container by default if type is not recognized
    }
  }
}
