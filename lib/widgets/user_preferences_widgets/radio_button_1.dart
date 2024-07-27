import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({
    Key? key,
    required this.text,
    required this.index,
    required this.isSelected,
    required this.onChanged,
    this.height,
    this.width,
    this.isMultiSelect = false,
  }) : super(key: key);

  final String text;
  final int index;
  final bool isSelected;
  final double? width;
  final double? height;
  final ValueChanged<int> onChanged;
  final bool isMultiSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(index);
      },
      child: Container(
        height: 60,
        width: ScreenUtils.screenWidth(context) * 0.87,
        decoration: BoxDecoration(
          border: Border.all(
            color: isMultiSelect? ColorsClass.textGrey: isSelected
                ? Colors.transparent
                : ColorsClass.textGrey,
          ),
          color: isMultiSelect? ColorsClass.bg:  isSelected ? Theme.of(context).primaryColor : ColorsClass.bg,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 20),
          child: Row(
            children: [
              if (isMultiSelect)
                Checkbox(
                  value: isSelected,
                  onChanged: (bool? selected) {
                    if (selected != null) {
                      onChanged(index);
                    }
                  },
                  activeColor: ColorsClass.primaryTheme,
                  checkColor: ColorsClass.bg,
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 18  ,
                          fontWeight: FontWeight.w500,
                          color: isMultiSelect? ColorsClass.textGrey : isSelected
                              ? Colors.white
                              : ColorsClass.textGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
