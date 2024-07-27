import 'package:flutter/material.dart';

class AccPageRadioButton extends StatelessWidget {
  const AccPageRadioButton({
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
    return InkWell(
      onTap: isEnabled ? () => onChanged?.call(value) : null,
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        child: Row(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Radio<int>(
                value: value,
                groupValue: groupValue,
                activeColor: Theme.of(context).primaryColor,
                onChanged: isEnabled ? onChanged : null,
              ),
            ),
            const SizedBox(width: 17),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
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
          AccPageRadioButton(
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
