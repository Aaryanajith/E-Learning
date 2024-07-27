// ignore_for_file: prefer_const_constructors

import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:flutter/material.dart';

class CoursesScroller extends StatelessWidget {
  const CoursesScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtils.screenHeight(context) * 0.16,
      width: ScreenUtils.screenWidth(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: ScreenUtils.screenWidth(context) * 0.5,
                  height: ScreenUtils.screenHeight(context) * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        'lib/assets/placeholder_${index + 1}.png', // Corrected asset path
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // You can add course-specific content here
                ),
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.0, 0.5], // Adjust the stops as needed
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
