import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class RadioButton2 extends StatelessWidget {
  const RadioButton2({
    Key? key,
    this.titleText,
    required this.text,
    required this.index,
    required this.isSelected,
    required this.onChanged,
    required this.height,
  }) : super(key: key);

  final Widget? titleText;
  final String text;
  final int index;
  final bool isSelected;
  final double? height;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(index);
      },
      child: Container(
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? Colors.transparent
                : Theme.of(context).primaryColor,
          ),
          color: isSelected ? Theme.of(context).primaryColor : ColorsClass.bg,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (titleText != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isSelected
                                ? Colors.white
                                : Theme.of(context).primaryColor,
                          ),
                          child: titleText!,
                        ),
                      ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 18,
                        color: isSelected ? Colors.white : Colors.black,
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
