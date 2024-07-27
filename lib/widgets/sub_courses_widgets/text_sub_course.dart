import 'package:flutter/material.dart';

class TextSubCourse extends StatelessWidget {
  final String text;
  const TextSubCourse({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
