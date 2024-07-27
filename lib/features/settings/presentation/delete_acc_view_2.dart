import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:e_learning_mobile/widgets/delete_acc_widgets/alert_dialog.dart';
import 'package:flutter/material.dart';

class DeleteAccount2 extends StatefulWidget {
  const DeleteAccount2({Key? key}) : super(key: key);

  @override
  State<DeleteAccount2> createState() => _DeleteAccount2State();
}

class _DeleteAccount2State extends State<DeleteAccount2> {
  final TextEditingController _userCredController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.white,
      appBar: const ELearningAppBar(
        title: "Delete Account",
        issplash: false,
        backButton: true,
      ),
      body: SizedBox(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80),
              child: Center(
                child: Text(
                  'Confirm your identity',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 62,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  TextFormField(
                    controller: _userCredController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: 'Email or Phone Number',
                      hintStyle: const TextStyle(
                        color: ColorsClass.lightmodeNeutral500,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenUtils.h2(context)),
                  TextFormField(
                    obscuringCharacter: '*',
                    obscureText: _obscureText,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: ColorsClass.lightmodeNeutral500,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.warning,
                                color: ColorsClass.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Warning',
                                style: TextStyle(
                                  color: ColorsClass.white,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Your subscription will be terminated and you will lose all data and access to your courses. ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          BottomButton(
                            text: 'Delete Account',
                            backgroundColour: ColorsClass.white,
                            onPressed: () {
                              showDeleteAccountDialog(context, () {
                                debugPrint('Delete Account ');
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtils.h2(context),
            ),
            BottomButton(text: 'Back to Settings', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
