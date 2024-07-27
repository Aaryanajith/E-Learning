import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final Image profileIcon;

  const HomeAppBar({
    super.key,
    required this.profileIcon
  });

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
      pinned: true,
      floating: true,
      elevation: 0,
      toolbarHeight: ScreenUtils.h4(context),
      backgroundColor: ColorsClass.primaryTheme,
      leading:IconButton(
          padding: const EdgeInsets.only(left : 16),
          icon: profileIcon,
          onPressed: (){},
      ),
      centerTitle: true,
      title: Image.asset('lib/assets/logo_2.png'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications , color: ColorsClass.themeYellow)),
        )
      ],
    );
  }
}