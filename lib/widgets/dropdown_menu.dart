import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  final double? width;
  final String label;
  final void Function(String?)? onSelected;
  final TextEditingController controller;
  final List<DropdownMenuEntry<String>> dropdownMenuEntries;

  const DropDownMenu({
    Key? key,
    this.width,
    required this.label,
    required this.onSelected,
    required this.controller,
    required this.dropdownMenuEntries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: width,
      controller: controller,
      enableFilter: true,
      enableSearch: true,
      requestFocusOnTap: true,
      leadingIcon: const Icon(Icons.search),
      trailingIcon: const Icon(Icons.keyboard_arrow_down),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: ColorsClass.black,
          fontSize: 16,
        ),
        selectionColor: Theme.of(context).primaryColor,
      ),
      dropdownMenuEntries: dropdownMenuEntries,
      selectedTrailingIcon: const Icon(Icons.cancel_outlined),
      menuStyle: const MenuStyle(
          surfaceTintColor: WidgetStatePropertyAll(ColorsClass.white)),
      onSelected: onSelected,
    );
  }
}
