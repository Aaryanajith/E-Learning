import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Podium extends StatelessWidget {
  final int rank;
  final String name;
  final int score;
  final String imagePath;
  final double imageSize;
  final double topPadding;

  const Podium({
    Key? key,
    required this.rank,
    required this.name,
    required this.score,
    required this.imagePath,
    required this.imageSize,
    required this.topPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$rank",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 36,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: Container(
            width: imageSize,
            height: imageSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor,
              // image: DecorationImage(
              //   image: AssetImage(imagePath),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          "$score",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
