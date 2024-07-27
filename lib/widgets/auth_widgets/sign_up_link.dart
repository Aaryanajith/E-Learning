import 'package:flutter/material.dart';
import 'package:e_learning_mobile/routes/route_names.dart';

class SignUpLink extends StatelessWidget {
  const SignUpLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteNames.signUp);
        },
        child: RichText(
          text: TextSpan(
            text: "",
            children: [
              const TextSpan(
                text: 'Don’t have an account? ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
