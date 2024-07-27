import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int numberOfDots;
  final int activeDotIndex;

  const DotIndicator({super.key, required this.numberOfDots, required this.activeDotIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(numberOfDots, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: index == activeDotIndex ? ColorsClass.primaryTheme : ColorsClass.dotIndicatorUnselected,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}