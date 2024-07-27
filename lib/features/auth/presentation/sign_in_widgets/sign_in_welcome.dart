import 'package:flutter/material.dart';

class SignInWelcome extends StatelessWidget {
  final String mainText;
  final String subText;
  const SignInWelcome(
      {super.key, required this.mainText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainText,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            subText,
            style: Theme.of(context).textTheme.labelMedium,
          )
        ],
      ),
    );
  }
}
