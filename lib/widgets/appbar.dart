import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class ELearningAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final bool issplash;
  final bool backButton;
  final Widget? trailing;
  final Widget? flexibleSpace;
  final TabBar? bottom;
  final Color? backgroundColor;
  const ELearningAppBar(
      { super.key, 
      required this.title, 
      required this.issplash,
      required this.backButton, 
      this.trailing, 
      this.flexibleSpace, 
      this.bottom,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: ScreenUtils.h4(context),
      elevation: 0,
      backgroundColor: backgroundColor,
      leading: IconButton(
          onPressed: () {},
          icon: backButton ? Icon(
        Icons.arrow_back,
        size: 30,
        color: issplash ? ColorsClass.white : ColorsClass.textGrey) : const Text('')),
      centerTitle: true,
      title: Text(
        title,
        style:TextStylesClass.customize(TextStylesClass.h5 , color :issplash ? ColorsClass.white : ColorsClass.textGrey),
      ),
      flexibleSpace:flexibleSpace ?? Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? (issplash ? Theme.of(context).primaryColor : ColorsClass.bg),
        ),
      ),
      actions: trailing != null ? [trailing!] : null,
      bottom : bottom
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}
