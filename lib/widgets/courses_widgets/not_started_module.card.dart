import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:flutter/material.dart';

class NotStartedModule extends StatelessWidget {
  const NotStartedModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtils.screenHeight(context) * 0.08,
      decoration: const BoxDecoration(
        color: ColorsClass.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Module Title",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Not Started",
              style: TextStyle(
                color: Color(0xFF79747E),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
