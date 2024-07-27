import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        height: 56,
        width: double.infinity,
        padding: EdgeInsetsDirectional.all(ScreenUtils.h2(context)),
        decoration: BoxDecoration(
            border: Border.all(color: ColorsClass.cartButtonColor, width: 2),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: ScreenUtils.w7(context),
              height: ScreenUtils.h7(context),
              child: const Icon(Icons.add, color: ColorsClass.textGrey1,),
            ),
            const SizedBox(width: 16),
            const Text(
              'Add Course',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorsClass.textGrey1,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
