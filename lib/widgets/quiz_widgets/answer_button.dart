import 'package:flutter/material.dart';

class AnswerRadioButton extends StatelessWidget {
  const AnswerRadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.text,
    this.isEnabled = true,
  }) : super(key: key);

  final int value;
  final int? groupValue;
  final ValueChanged<int?>? onChanged;
  final String text;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          if (isEnabled)
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
        ],
        color: isEnabled ? Colors.white : Colors.grey.withOpacity(0.5),
      ),
      child: InkWell(
        onTap: isEnabled ? () => onChanged?.call(value) : null,
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: Radio<int>(
                    value: value,
                    groupValue: groupValue,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: isEnabled ? onChanged : null,
                  ),
                ),
              ),
              const SizedBox(
                  width: 17), // Add spacing between the circle and the text
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 0.09,
                  letterSpacing: 0.15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  const RadioGroup({super.key});

  @override
  RadioGroupState createState() => RadioGroupState();
}

class RadioGroupState extends State<RadioGroup> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (int i = 1; i <= 5; i++)
          AnswerRadioButton(
            value: i,
            groupValue: _value,
            onChanged: (int? value) {
              setState(() {
                _value = value;
              });
            },
            text: 'Radio $i',
            isEnabled: i != 5,
          ),
      ],
    );
  }
}
