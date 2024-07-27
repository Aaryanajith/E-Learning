import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/cart_widgets/cart_button.dart';
import 'package:e_learning_mobile/widgets/cart_widgets/cart_card.dart';
import 'package:e_learning_mobile/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themedata.scaffoldBackgroundColor,
      appBar: const ELearningAppBar(
        title: 'Cart', 
        issplash: false, 
        backButton: true,
        ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtils.w2(context),
            vertical: ScreenUtils.h2(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Review your order',
                style: TextStyle(
                  color: ColorsClass.textGrey,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: ScreenUtils.h2(context),
              ),
              const Text(
                'Items: 1',
                style: TextStyle(
                  color: ColorsClass.textGrey,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: ScreenUtils.h2(context),
              ),
              const CartCard(
                courseName: 'Advanced Pronunciation and Accent',
                courseDescription: 'Self-paced learning with batchwise mentor support',
                price: '5,500',
                subscriptionTier: 'Gold',
              ),
              SizedBox(
                height: ScreenUtils.h3(context),
              ),
              const CartButton(),
              const Spacer(),
              SubmitButton(text: 'Proceed to checkout',onTap: () => Navigator.pushNamed(context, RouteNames.orderConfirmView)),
            ],
          ),
        ),
      ),
    );
  }
}
