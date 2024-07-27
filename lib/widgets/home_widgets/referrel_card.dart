import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:flutter/material.dart';

class ReferalCard extends StatelessWidget {
  const ReferalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtils.screenHeight(context) * 0.14,
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-0.79),
                    child: Icon(
                      Icons.link,
                      size: 60,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Invite your friends to the app',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                            letterSpacing: 0.15,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Earn 100 credits per referral',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
