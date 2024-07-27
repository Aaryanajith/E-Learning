import 'package:flutter/material.dart';
import 'package:e_learning_mobile/routes/route_names.dart';

class LoginLink extends StatelessWidget {
  const LoginLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteNames.signIn);
        },
        child: RichText(
          text: TextSpan(
            text: "",
            children: [
              const TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Login',
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
