import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labeltext;
  const NewTextField(
      {super.key, required this.labeltext, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labeltext,
        labelStyle: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: ColorsClass.verylightgrey),
      ),
    );
  }
}
