import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';

class CuratingView extends ConsumerWidget {
  const CuratingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ColorsClass.bg,
      body : SafeArea(
        child: Padding(
          padding : const EdgeInsets.symmetric(horizontal: 16),
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                height: 0.3.sh,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/logo_1.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: ScreenUtils.h3(context)),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 50),
              child:Text(
                "Curating the best course for you...",
                textAlign: TextAlign.center,
                style: TextStylesClass.h5,
              ))
            ]
          )
        )
      )
    );
  }
}
