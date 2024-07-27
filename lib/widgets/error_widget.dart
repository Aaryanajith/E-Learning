import 'package:flutter/material.dart';

class ELErrorWidget extends StatelessWidget {
  final Object e;
  const ELErrorWidget({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Text(e.toString());
  }
}
