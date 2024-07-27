import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class NavBarIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const NavBarIcon({
    required this.icon,
    required this.isSelected,
    Key? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isSelected)
          Container(
            height: 3,
            width: 15,
            decoration: BoxDecoration(
              color: ColorsClass.primaryTheme,
              borderRadius: BorderRadius.circular(1.5),
            ),
          ),
        Icon(icon,color: ColorsClass.primaryTheme)
      ],
    );
  }
}