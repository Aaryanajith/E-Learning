import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:e_learning_mobile/widgets/delete_acc_widgets/acc_radio_button.dart';
import 'package:flutter/material.dart';

class DeleteAccount1 extends StatefulWidget {
  const DeleteAccount1({Key? key}) : super(key: key);

  @override
  State<DeleteAccount1> createState() => _DeleteAccount1State();
}

class _DeleteAccount1State extends State<DeleteAccount1> {
  int _selectedValue = 1;
  bool _showTextField = false;
  final TextEditingController _otherReasonController = TextEditingController();

  void _handleRadioValueChanged(int? value) {
    setState(() {
      _selectedValue = value ?? 1;

      _showTextField = value == reasons.length;
    });
  }

  List<String> reasons = [
    "Difficulty navigating the app",
    "The app is incompatible with my device or operating system",
    "Limited variety of courses available",
    "The subscriptions are not affordable to me",
    "I have another account",
    "I found a better alternative platform for my learning needs",
    "I have time constraints that prevent me from using the app efficiently",
    "I find the courses to be unengaging",
    "Other (please specify)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.white,
      appBar: const ELearningAppBar(
        title: "Delete Account", 
        issplash: false, 
        backButton: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Why are you leaving Berry’s Academy?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: reasons.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: AccPageRadioButton(
                            value: index + 1,
                            groupValue: _selectedValue,
                            onChanged: (value) =>
                                _handleRadioValueChanged(value),
                            text: reasons[index],
                            isEnabled: index != reasons.length,
                          ),
                        );
                      },
                    ),
                    if (_showTextField)
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: TextFormField(
                          controller: _otherReasonController,
                          maxLines: null,
                          decoration: const InputDecoration(
                            hintText: "Type here...",
                            hintStyle: TextStyle(
                              color: Color(0xFF49454F),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          BottomButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RouteNames.deleteAccountView2);
                            },
                            text: 'Continue',
                            backgroundColour: ColorsClass.white,
                          ),
                          const SizedBox(height: 17),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: ScreenUtils.h4(context),
                            ),
                            child: BottomButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, RouteNames.userPrefs);
                              },
                              text: 'Back to Settings',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
