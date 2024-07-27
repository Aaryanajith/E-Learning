import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.subscriptionTier,
    required this.courseName,
    required this.courseDescription,
    required this.price
  }) : super(key: key);

  final String subscriptionTier;
  final String courseName;
  final String courseDescription;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtils.h2(context)),
      decoration: BoxDecoration(
        color: ColorsClass.bg,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: ColorsClass.boxShadow,
            blurRadius: 36,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context),
          SizedBox(height: ScreenUtils.h2(context)),
          _buildSubscriptionPlan(),
          SizedBox(height: ScreenUtils.h2(context)),
          _buildPrice(),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            courseName,
            style: const TextStyle(
              color: ColorsClass.primaryTheme,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: ScreenUtils.h2(context)),
        SizedBox(
          width: ScreenUtils.w7(context),
          height: ScreenUtils.h7(context),
          child: const Icon(Icons.delete),
        ),
      ],
    );
  }

  Widget _buildSubscriptionPlan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'SUBSCRIPTION PLAN',
          style: TextStyle(
            color: ColorsClass.textGrey,
            fontSize: 10,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          subscriptionTier,
          style: const TextStyle(
            color: ColorsClass.textGrey1,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          courseDescription,
          style: const TextStyle(
            color: ColorsClass.textGrey2,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Rs. $price',
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: ColorsClass.textGrey1,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
