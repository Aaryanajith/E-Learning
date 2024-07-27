import 'package:flutter/material.dart';

class HomeText extends StatelessWidget {
  final String text;
  final TextStyle style;
  const HomeText({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}