import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/nav_bar_icon.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  final PageController controller;
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  const HomeNavBar(
      {Key? key,
      required this.controller,
      required this.selectedIndex,
      required this.onDestinationSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 16,
                offset: Offset(0, -4),
                spreadRadius: 0,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: SizedBox(
                height: ScreenUtils.h4(context),
                child: Theme(
                  data: ThemeData(
                      navigationBarTheme: NavigationBarThemeData(
                          labelTextStyle:
                              WidgetStateProperty.all(TextStylesClass.caption),
                          iconTheme: WidgetStateProperty.all(
                              const IconThemeData(size: 24)))),
                  child: NavigationBar(
                    backgroundColor: ColorsClass.bg,
                    indicatorColor: Colors.transparent,
                    destinations: const <Widget>[
                      NavigationDestination(
                        icon: NavBarIcon(icon: Icons.home, isSelected: false),
                        selectedIcon:
                            NavBarIcon(icon: Icons.home, isSelected: true),
                        label: 'Home',
                      ),
                      NavigationDestination(
                        icon: NavBarIcon(
                            icon: Icons.import_contacts, isSelected: false),
                        selectedIcon: NavBarIcon(
                            icon: Icons.import_contacts, isSelected: true),
                        label: 'Learn',
                      ),
                      NavigationDestination(
                        icon: NavBarIcon(
                            icon: Icons.emoji_events, isSelected: false),
                        selectedIcon: NavBarIcon(
                            icon: Icons.emoji_events, isSelected: true),
                        label: 'Ranking',
                      ),
                      NavigationDestination(
                        icon: NavBarIcon(
                            icon: Icons.emoji_events, isSelected: false),
                        selectedIcon: NavBarIcon(
                            icon: Icons.emoji_events, isSelected: true),
                        label: 'LiveClasses',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.add_circle, color: Colors.transparent),
                        label: 'Speeki',
                      ),
                    ],
                    selectedIndex: selectedIndex,
                    onDestinationSelected: onDestinationSelected,
                  ),
                )),
          ),
        ),
        Positioned(
          bottom: ScreenUtils.h1(context),
          right: 0,
          child: GestureDetector(
            onTap: () => controller.jumpToPage(3),
            child: Image.asset(
              selectedIndex == 3
                  ? 'lib/assets/logo_1_selected.png'
                  : 'lib/assets/logo_1.png',
            ),
          ),
        ),
      ],
    );
  }
}
